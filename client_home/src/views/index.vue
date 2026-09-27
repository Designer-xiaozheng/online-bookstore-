<template>
	<div class="page_root" id="root_demo">
		<div class="warp">
		    <div class="container">
		        <div class="row">
		            <div class="col">
		                <div class="card_ad">
		                    <!-- 页头 -->
		                    <list_ad
		                            :list="list_ad"
		                            location="店招"
		                            v-if="$check_action('/ad/list', 'get')"
		                            style="marginbottom: 0.5rem"
		                    />
		                </div>
		            </div>
		        </div>
		    </div>
		</div>

		<div class="warp">
		    <div class="container swiper_box">
		        <div class="row">
		            <div class="col-12">
		                <div class="sw_no">
		                    <!-- 轮播图组件 -->
		                    <div class="swiper_img">
		                        <swiper_img :list="list_slide"/>
		                    </div>
							<div class="card_notice">
								<div class="notice_title">公告栏 <router-link to="notice/list">更多</router-link></div>
								<!-- 公告组件 -->
								<swiper_notice :list="list_notice"/>
							</div>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>

		<div class="warp">
		    <div class="container">
		        <div class="row">
		            <div class="col">
		                <div class="card_ad">
		                    <!-- 顶部 -->
		                    <list_ad
		                            :list="list_ad"
		                            v-if="$check_action('/ad/list', 'get')"
		                            location="顶部广告"
		                    />
		                </div>
		            </div>
		        </div>
		    </div>
		</div>

		<div class="warp">
		    <div class="container">
		        <div class="row">
		            <div class="col">
		                <div class="card_ad">
		                    <!-- 中部 -->
		                    <list_ad
		                            :list="list_ad"
		                            v-if="$check_action('/ad/list', 'get')"
		                            location="中部广告"
		                    />
		                </div>
		            </div>
		        </div>
		    </div>
		</div>

		<div class="warp">
		    <div class="container">
		        <div class="row">
		            <div class="col">
		                <div class="card_ad">
		                    <!-- 底部 -->
		                    <list_ad
		                            :list="list_ad"
		                            v-if="$check_action('/ad/list', 'get')"
		                            location="底部广告"
		                    />
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<!-- 推荐酒店预定模块(开始) -->
		<div class="warp">
		    <!-- 容器 -->
		    <div class="container">
		        <div class="row">
		            <div class="col-12">
		                <!-- 标题栏组件 -->
		                <div class="diy_recommend">
		                    <div class="title">
		                        <span>酒店预定推荐 </span>
		                    </div>
		                    <div class="more_box">
		                        <router-link to="/hotel_reservation/list" class="more">
		                            <span>更多</span>
		                        </router-link>
		                    </div>
		                    <div class="switch" @click="show_list_hotel_reservation = !show_list_hotel_reservation">
		                        <div class="switch_box">
		                            <span v-if="show_list_hotel_reservation"> 切换表格 </span>
		                            <span v-else> 切换列表 </span>
		                        </div>
		                    </div>
		                </div>
		                <!--酒店预定推荐列表组件 -->
		                <list_hotel_reservation v-if="show_list_hotel_reservation" :list="list_hotel_reservation" />
		                <div class="overflow-auto" v-else>
		                    <table id="list_diy" role="table" aria-busy="false"
		                           :aria-colcount="fields_hotel_reservation.length"
		                           class="table b-table table-striped table-hover">
		                        <thead>
		                        <tr>
		                            <th v-for="(o,i) in fields_hotel_reservation" :key="i">
		                                {{o.label}}
		                            </th>
		                        </tr>
		                        </thead>
		                        <tbody>
		                        <tr v-for="(o, i) in list_table_hotel_reservation" :key="i" @click="to_details('hotel_reservation',o,'hotel_reservation_id')">
		                            <td v-for="(oj,n) in fields_hotel_reservation">
		                                <img v-if="oj.type && oj.type == '图片' " :src="$fullUrl(o[oj.key])" alt=""
		                                     v-default-img="'/img/default.png'">
										<span v-else-if="oj.type && oj.type == 'UID' ">
											<span style="display: none">
												{{get_user_by_user_id(o,oj,oj.key)}}
											</span>
												{{oj.value}}
										</span>
		                                <span v-else>{{ o[oj.key] }}</span>
		                            </td>
		                        </tr>
		                        </tbody>
		                    </table>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<!-- 推荐酒店预定模块(结束) -->
		<!-- 推荐景点购票模块(开始) -->
		<div class="warp">
		    <!-- 容器 -->
		    <div class="container">
		        <div class="row">
		            <div class="col-12">
		                <!-- 标题栏组件 -->
		                <div class="diy_recommend">
		                    <div class="title">
		                        <span>景点购票推荐 </span>
		                    </div>
		                    <div class="more_box">
		                        <router-link to="/scenic_spot_ticket_purchase/list" class="more">
		                            <span>更多</span>
		                        </router-link>
		                    </div>
		                    <div class="switch" @click="show_list_scenic_spot_ticket_purchase = !show_list_scenic_spot_ticket_purchase">
		                        <div class="switch_box">
		                            <span v-if="show_list_scenic_spot_ticket_purchase"> 切换表格 </span>
		                            <span v-else> 切换列表 </span>
		                        </div>
		                    </div>
		                </div>
		                <!--景点购票推荐列表组件 -->
		                <list_scenic_spot_ticket_purchase v-if="show_list_scenic_spot_ticket_purchase" :list="list_scenic_spot_ticket_purchase" />
		                <div class="overflow-auto" v-else>
		                    <table id="list_diy" role="table" aria-busy="false"
		                           :aria-colcount="fields_scenic_spot_ticket_purchase.length"
		                           class="table b-table table-striped table-hover">
		                        <thead>
		                        <tr>
		                            <th v-for="(o,i) in fields_scenic_spot_ticket_purchase" :key="i">
		                                {{o.label}}
		                            </th>
		                        </tr>
		                        </thead>
		                        <tbody>
		                        <tr v-for="(o, i) in list_table_scenic_spot_ticket_purchase" :key="i" @click="to_details('scenic_spot_ticket_purchase',o,'scenic_spot_ticket_purchase_id')">
		                            <td v-for="(oj,n) in fields_scenic_spot_ticket_purchase">
		                                <img v-if="oj.type && oj.type == '图片' " :src="$fullUrl(o[oj.key])" alt=""
		                                     v-default-img="'/img/default.png'">
										<span v-else-if="oj.type && oj.type == 'UID' ">
											<span style="display: none">
												{{get_user_by_user_id(o,oj,oj.key)}}
											</span>
												{{oj.value}}
										</span>
		                                <span v-else>{{ o[oj.key] }}</span>
		                            </td>
		                        </tr>
		                        </tbody>
		                    </table>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<!-- 推荐景点购票模块(结束) -->
		<!-- 推荐旅游路线模块(开始) -->
		<div class="warp">
		    <!-- 容器 -->
		    <div class="container">
		        <div class="row">
		            <div class="col-12">
		                <!-- 标题栏组件 -->
		                <div class="diy_recommend">
		                    <div class="title">
		                        <span>旅游路线推荐 </span>
		                    </div>
		                    <div class="more_box">
		                        <router-link to="/tourist_route/list" class="more">
		                            <span>更多</span>
		                        </router-link>
		                    </div>
		                    <div class="switch" @click="show_list_tourist_route = !show_list_tourist_route">
		                        <div class="switch_box">
		                            <span v-if="show_list_tourist_route"> 切换表格 </span>
		                            <span v-else> 切换列表 </span>
		                        </div>
		                    </div>
		                </div>
		                <!--旅游路线推荐列表组件 -->
		                <list_tourist_route v-if="show_list_tourist_route" :list="list_tourist_route" />
		                <div class="overflow-auto" v-else>
		                    <table id="list_diy" role="table" aria-busy="false"
		                           :aria-colcount="fields_tourist_route.length"
		                           class="table b-table table-striped table-hover">
		                        <thead>
		                        <tr>
		                            <th v-for="(o,i) in fields_tourist_route" :key="i">
		                                {{o.label}}
		                            </th>
		                        </tr>
		                        </thead>
		                        <tbody>
		                        <tr v-for="(o, i) in list_table_tourist_route" :key="i" @click="to_details('tourist_route',o,'tourist_route_id')">
		                            <td v-for="(oj,n) in fields_tourist_route">
		                                <img v-if="oj.type && oj.type == '图片' " :src="$fullUrl(o[oj.key])" alt=""
		                                     v-default-img="'/img/default.png'">
										<span v-else-if="oj.type && oj.type == 'UID' ">
											<span style="display: none">
												{{get_user_by_user_id(o,oj,oj.key)}}
											</span>
												{{oj.value}}
										</span>
		                                <span v-else>{{ o[oj.key] }}</span>
		                            </td>
		                        </tr>
		                        </tbody>
		                    </table>
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
		<!-- 推荐旅游路线模块(结束) -->

		<div class="warp">
		    <div class="container">
		        <div class="row">
		            <div class="col">
		                <div class="card_link">
		                    <!-- 底部友情链接 -->
		                    <list_link
		                            v-if="$check_action('/link/list', 'get')"
		                            :list="list_link"
		                    />
		                </div>
		            </div>
		        </div>
		    </div>
		</div>
	</div>
</template>

<script>
	import mixin from "@/mixins/page.js";
	import list_hotel_reservation from "@/components/diy/list_hotel_reservation.vue";
	import list_scenic_spot_ticket_purchase from "@/components/diy/list_scenic_spot_ticket_purchase.vue";
	import list_tourist_route from "@/components/diy/list_tourist_route.vue";
	import bar_title from "@/components/diy/bar_title.vue";
	import swiper_img from "@/components/diy/swiper_img.vue";
	import list_ad from "@/components/diy/list_ad.vue";
	import list_link from "@/components/diy/list_link.vue";
	import swiper_notice from "@/components/diy/swiper_notice.vue";

	export default {
		mixins: [mixin],
		components: {
			list_hotel_reservation,
			list_scenic_spot_ticket_purchase,
			list_tourist_route,
			bar_title,
			swiper_img,
			swiper_notice,
			list_ad,
			list_link,
		},
		data() {
			return {
				isSmall: false,
				sendValue: "",
				chatList:[],
				showChat: false,
				isAdmin: false,
				token:"",
				show_list_hotel_reservation: true,
				list_hotel_reservation: [],
				vm_arr_hotel_reservation: [
					"hotel_reservation_id",
					"hotel_name",
					"hotel_address",
					"contact_number",
					"room_type",
					"bed_type",
					"number_of_rooms",
					"room_price",
					"room_picture",
					"room_details",
				],
				fields_hotel_reservation: [
					{
						key: "hotel_name",
						label: "酒店名称",
						type: "文本"
					},
					{
						key: "hotel_address",
						label: "酒店地址",
						type: "文本"
					},
					{
						key: "contact_number",
						label: "联系电话",
						type: "文本"
					},
					{
						key: "room_type",
						label: "房间类型",
						type: "文本"
					},
					{
						key: "bed_type",
						label: "床位类型",
						type: "下拉"
					},
					{
						key: "number_of_rooms",
						label: "房间数量",
						type: "数字"
					},
					{
						key: "room_price",
						label: "房间价格",
						type: "数字"
					},
					{
						key: "room_picture",
						label: "房间图片",
						type: "图片"
					},
				],
				show_list_scenic_spot_ticket_purchase: true,
				list_scenic_spot_ticket_purchase: [],
				vm_arr_scenic_spot_ticket_purchase: [
					"scenic_spot_ticket_purchase_id",
					"name_of_scenic_spot",
					"scenic_spot_type",
					"scenic_spot_address",
					"ticket_price",
					"working_personnel",
					"opening_hours",
					"scenic_spot_pictures",
					"ticket_purchase_instructions",
					"introduction_to_scenic_spots",
				],
				fields_scenic_spot_ticket_purchase: [
					{
						key: "name_of_scenic_spot",
						label: "景点名称",
						type: "文本"
					},
					{
						key: "scenic_spot_type",
						label: "景点类型",
						type: "文本"
					},
					{
						key: "scenic_spot_address",
						label: "景点地址",
						type: "文本"
					},
					{
						key: "ticket_price",
						label: "门票价格",
						type: "数字"
					},
					{
						key: "working_personnel",
						label: "工作人员",
						type: "UID",
						value: ""
					},
					{
						key: "opening_hours",
						label: "开放时间",
						type: "文本"
					},
					{
						key: "scenic_spot_pictures",
						label: "景点图片",
						type: "图片"
					},
					{
						key: "ticket_purchase_instructions",
						label: "购票须知",
						type: "多文本"
					},
				],
				show_list_tourist_route: true,
				list_tourist_route: [],
				vm_arr_tourist_route: [
					"tourist_route_id",
					"route_name",
					"route_type",
					"route_starting_point",
					"route_end",
					"cover_picture",
					"applicant",
					"route_details",
				],
				fields_tourist_route: [
					{
						key: "route_name",
						label: "路线名称",
						type: "文本"
					},
					{
						key: "route_type",
						label: "路线类型",
						type: "文本"
					},
					{
						key: "route_starting_point",
						label: "路线起点",
						type: "文本"
					},
					{
						key: "route_end",
						label: "路线终点",
						type: "文本"
					},
					{
						key: "cover_picture",
						label: "封面图",
						type: "图片"
					},
					{
						key: "applicant",
						label: "申请人",
						type: "UID",
						value: ""
					},
				],
				list_slide: [],
				list_menu: [],
				list_link: [],
				list_notice: [],
				list_ad: []
			};
		},
		created(){
			this.get_token();
		},
		methods: {
			get_token(){
				let token = this.$route.query.token
				if (token){
					$.db.set("token",token,120);
					location.href = "http://localhost:8081/"
				}
			},
					// toggle
			toToggle(){
				this.isAdmin = !this.isAdmin;
			},
			// 获取酒店预定列表
			get_hotel_reservation() {
				let url = "~/api/hotel_reservation/get_list?";
				this.$get(url, {
					"page": 1,
					"size": 8
				}, (json) => {
					if (json.result) {
						this.list_hotel_reservation = json.result.list;
					}
				})
			},
			// 获取景点购票列表
			get_scenic_spot_ticket_purchase() {
				let url = "~/api/scenic_spot_ticket_purchase/get_list?";
				this.$get(url, {
					"page": 1,
					"size": 8
				}, (json) => {
					if (json.result) {
						this.list_scenic_spot_ticket_purchase = json.result.list;
					}
				})
			},
			// 获取旅游路线列表
			get_tourist_route() {
				let url = "~/api/tourist_route/get_list?";
				this.$get(url, {
					"examine_state": "已通过", // 审核状态
					"page": 1,
					"size": 8
				}, (json) => {
					if (json.result) {
						this.list_tourist_route = json.result.list;
					}
				})
			},

			/**
			 * 当前年月日时分秒方法
			 * @param {Object} fmt
			 */
			dateFormat(fmt) {
				var myDate = new Date();
				var o = {
					"M+": myDate.getMonth() + 1, // 月份
					"d+": myDate.getDate(), // 日
					"h+": myDate.getHours(), // 小时
					"m+": myDate.getMinutes(), // 分
					"s+": myDate.getSeconds(), // 秒
					"q+": Math.floor((myDate.getMonth() + 3) / 3), // 季度
					"S": myDate.getMilliseconds() // 毫秒
				};
				if (/(y+)/.test(fmt))
					fmt = fmt.replace(RegExp.$1, (myDate.getFullYear() + "").substr(4 - RegExp.$1.length));
				for (var k in o)
					if (new RegExp("(" + k + ")").test(fmt)) fmt = fmt.replace(RegExp.$1, (RegExp.$1.length == 1) ? (o[k]) : (("00" + o[k]).substr(("" + o[k]).length)));
						return fmt;
			},

			// 获取轮播图
			get_slides() {
			    this.$get("~/api/slides/get_list?", {}, (json) => {
			        if (json.result) {
			            this.list_slide = json.result.list;
			        }
			    });
			},
			// 获取导航栏
			get_menu() {
				var user_group = this.user_group;
			    this.$get(
			        "~/api/auth/get_list?",
			        {
			            page: "",
						user_group,
						get: 1,
						position: "top"
			        },
			        (json) => {
			            if (json.result) {
			                this.list_menu = json.result.list;
			            }
			        }
			    );
			},
			// 获取广告
			get_ad() {
			    this.$get(
			        "~/api/ad/get_list?",
			        {
			            orderby: '`display` desc'
			        },
			        (json) => {
			            if (json.result) {
			                var list_ad = json.result.list;
			                this.list_ad = list_ad;
			            }
			        }
			    );
			},
			// 获取链接列表
			get_link() {
			    this.$get(
			        "~/api/link/get_list?",
			        {
			            page: 1,
			            size: 8,
			        },
			        (json) => {
			            if (json.result) {
			                var list_link = json.result.list;
			                this.list_link = list_link;
			            }
			        }
			    );
			},
			// 获取公告列表
			get_notice() {
			    this.$get(
			        "~/api/notice/get_list?",
			        {
			            page: 1,
			            size: 3,
			        },
			        (json) => {
			            if (json.result) {
			                var list_notice = json.result.list;
			                this.list_notice = list_notice;
			            }
			        }
			    );
			},
			to_details(key,o,id) {
				if(!id){
					id = key + "_id";
				}
			    this.$router.push('/' + key + '/details?' + id + '=' + o[id]);
			}
		},
		mounted() {
			this.get_hotel_reservation();
			this.get_scenic_spot_ticket_purchase();
			this.get_tourist_route();
			this.get_menu();
			this.get_slides();
			this.get_link();
			this.get_notice();
			this.get_ad();
		},
		computed: {
		    list_table_hotel_reservation() {
		        var list = this.list_hotel_reservation;
		        var list_table = [];
		        for (let i = 0; i < list.length; i++) {
		            list_table[i] = {};
		            this.vm_arr_hotel_reservation.map((o) => {
		                // 第二个中括号是对象的属性
		                list_table[i][o] = list[i][o] || "";
		            });
		        }
		        return list_table;
		    },
		    list_table_scenic_spot_ticket_purchase() {
		        var list = this.list_scenic_spot_ticket_purchase;
		        var list_table = [];
		        for (let i = 0; i < list.length; i++) {
		            list_table[i] = {};
		            this.vm_arr_scenic_spot_ticket_purchase.map((o) => {
		                // 第二个中括号是对象的属性
		                list_table[i][o] = list[i][o] || "";
		            });
		        }
		        return list_table;
		    },
		    list_table_tourist_route() {
		        var list = this.list_tourist_route;
		        var list_table = [];
		        for (let i = 0; i < list.length; i++) {
		            list_table[i] = {};
		            this.vm_arr_tourist_route.map((o) => {
		                // 第二个中括号是对象的属性
		                list_table[i][o] = list[i][o] || "";
		            });
		        }
		        return list_table;
		    },
		}
	};
</script>

<style scoped>
.page_root{
	position: relative;
}
.support_entry{
	position: fixed;
	top: 400px;
	right: 20px;
	width: 80px;
	height: 80px;
	cursor: pointer;
	z-index: 99999;
}
.support_module .container{
        /* height: 650px; */
        height: 70%;
        width: 700px;
        border-radius: 4px;
        border: 0.5px solid #e0e0e0;
        background-color: #f5f5f5;
        /* display: flex;
        flex-flow: column; */
        overflow: hidden;
				position: fixed;
				/* top: 100px; */
				padding: 0;
				margin-left: -350px;
				z-index: 99999999;
    }
	.support_module	.small_css{
		height: 40px;
		width: 200px;
		right: 0;
		bottom: 0px;
	}
	.support_module	.big_css{
				top: 60px;
				left: 50%;
				}
    .support_module .content{
        width: calc(100% - 0px);
        padding: 20px 30px;
        overflow-y: scroll;
				height: 70%;
    }
		.support_module .content::-webkit-scrollbar{
	display: none
}
.support_module_title{
	text-align: right;
	height: 40px;
	line-height: 40px;
	border-bottom: 1px solid #ccc;

}
.support_module_title .title_btn{
	font-size: 20px;
	cursor: pointer;
	margin-right: 20px;
	color: #888;

}
    .support_module .content:hover::-webkit-scrollbar-thumb{
        background:rgba(0,0,0,0.1);
    }
    .support_module .bubble{
        max-width: 400px;
        padding: 10px;
        border-radius: 5px;
        position: relative;
        color: #000;
        word-wrap:break-word;
        word-break:normal;
    }
    .support_module .item_left .bubble{
        margin-left: 15px;
        background-color: #fff;
    }
    .support_module .item_left .bubble:before{
        content: "";
        position: absolute;
        width: 0;
        height: 0;
        border-left: 10px solid transparent;
        border-top: 10px solid transparent;
        border-right: 10px solid #fff;
        border-bottom: 10px solid transparent;
        left: -20px;
    }
    .support_module .item_right .bubble{
        margin-right: 15px;
        background-color: #9eea6a;
    }
    .support_module .item_right .bubble:before{
        content: "";
        position: absolute;
        width: 0;
        height: 0;
        border-left: 10px solid #9eea6a;
        border-top: 10px solid transparent;
        border-right: 10px solid transparent;
        border-bottom: 10px solid transparent;
				left: none;

				        right: -20px;
    }
    .support_module .item{
        margin-top: 15px;
        display: flex;
        width: 100%;
    }
    .support_module .item.item_right{
        justify-content: flex-end;
				min-width: 400px;
    }
    .support_module .item.item-center{
        justify-content: center;
    }
    .support_module .item.item-center span{
        font-size: 12px;
        padding: 2px 4px;
        color: #fff;
        background-color: #dadada;
        border-radius: 3px;
        -moz-user-select:none; /*火狐*/
        -webkit-user-select:none; /*webkit浏览器*/
        -ms-user-select:none; /*IE10*/
        -khtml-user-select:none; /*早期浏览器*/
        user-select:none;
    }

    .support_module .avatar img{
        width: 42px;
        height: 42px;
        border-radius: 50%;
    }
    .support_module .input-area{
        border-top:0.5px solid #e0e0e0;
        height: 16%;

        background-color: #fff;
    }
    .support_module textarea{
        flex: 1;
        padding: 10px;
        font-size: 14px;
        border: none;
        overflow-y: auto;
        overflow-x: hidden;
        outline:none;
        resize:none;
				width: 102%;
				height: 100%;
				min-height: 100%;
				max-height: 100%;
    }
    .support_module .button-area{
      display: flex;
    height: 50px;
    line-height: 50px;
    padding: 5px;
    justify-content: flex-end;
    text-align: right;
    width: 100%;
		background: #fff;
    }
    .support_module .button-area button{
        width: 80px;
				height: 40px;
				line-height: 40px;
        border: none;
        outline: none;
        border-radius: 4px;
        float: right;
        cursor: pointer;
				background: #9eea6a;
				color: #333;
				margin: 0px;
    }

    /* 设置滚动条的样式 */
    ::-webkit-scrollbar {
        width:10px;
    }
    /* 滚动槽 */
    ::-webkit-scrollbar-track {
        -webkit-box-shadow:inset006pxrgba(0,0,0,0.3);
        border-radius:8px;
    }
    /* 滚动条滑块 */
    ::-webkit-scrollbar-thumb {
        border-radius:10px;
        background:rgba(0,0,0,0);
        -webkit-box-shadow:inset006pxrgba(0,0,0,0.5);
    }

	.sw_no {
	    margin: 0.5rem;
	    display: flex;
	    flex-wrap: wrap;
	}

	.swiper_img {
	    width: 60%;
	    height: 18.75rem;
	}

	.card_notice {
	    width: 40%;
	    padding-left: 1rem;
	    height: 18.75rem;
	}

	.notice_title {
	    font-size: 1.2rem;
	    font-weight: bold;
	    color: white;
	    display: flex;
		justify-content: space-between;
	    align-items: center;
	    background-color: #d2d2d2;
	    height: 3rem;
	    padding: 0 1.5rem;
	}

	.article_recommend > * {
	    display: flex;
	    justify-content: center;
	    align-items: center;
	}

	.article_recommend {
	    display: block;
	    margin: 1.5rem 0.5rem;
	    height: 4rem;
	    border-radius: 0.5rem;
	    background-color: var(--color_primary);
	}

	.diy_recommend > * {
	    display: flex;
	    justify-content: center;
	    align-items: center;
	}

	.diy_recommend {
	    display: block;
	    margin: 1.5rem 0.5rem;
	    height: 4rem;
	    border-radius: 0.5rem;
	    background-color: var(--color_primary);
	}

	.title {
	    float: left;
	    height: 4rem;
	    color: white;
	    font-size: 1.5rem;
	    font-weight: bold;
	    padding-left: 1rem;
	}

	.more_box {
	    float: right;
	    height: 4rem;
	    color: white;
	    font-size: 1.5rem;
	    padding-right: 1rem;
	}

	.more_box .more {
	    border-radius: 0.5rem;
	    border: 0.125rem solid white;
	    display: flex;
	    align-items: center;
	    font-size: 1.2rem;
	    justify-content: center;
	    height: 3rem;
	    width: 3.5rem;
	}

	.switch {
	    float: right;
	    height: 4rem;
	    color: white;
	    padding-right: 1rem;
	}

	.switch_box {
	    border-radius: 0.5rem;
	    border: 0.125rem solid white;
	    display: flex;
	    align-items: center;
	    font-size: 1.2rem;
	    justify-content: center;
	    height: 3rem;
	    width: 6rem;
	}

	.switch_box:hover, .more:hover {
	    background-color: white;
	    color: var(--color_primary) !important;
	}

	.overflow-auto .table th,
	.overflow-auto .table td {
	    text-align: center;
	    text-wrap: normal;
	    font-size: 1rem;
	    vertical-align: middle;
	}

	/*.page_index {*/
	/*    margin: 0 auto;*/
	/*    max-width: 1200px;*/
	/*}*/

	/*.main {*/
	/*    display: flex;*/
	/*    justify-content: space-between;*/
	/*}*/

	/*.content {*/
	/*    flex: 0 0 79%;*/
	/*}*/

	/*.aside {*/
	/*    flex: 0 0 20%;*/
	/*}*/

	.card_ad {
	    margin-top: 1rem;
	}

	@media (max-width: 996px) {
	    .swiper_img {
	        width: 100%;
	        height: 12.5rem;
	    }

	    .card_notice {
	        width: 100%;
	        padding-left: 0;
	    }
	}
</style>
