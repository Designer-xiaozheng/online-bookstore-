<template>
	<div class="diy_home diy_list diy_hotel_reservation" id="diy_hotel_reservation_list">
		<!-- 列表 -->
		<div class="diy_view_list list list-x" v-if="show">
			<router-link class="diy_card goods diy_list_box_wrap" v-for="(o, i) in list" :key="i"
				:to="'/hotel_reservation/details?hotel_reservation_id=' + o['hotel_reservation_id']">
				<!-- 图片 -->
				<div class="diy_list_img_box" v-if="imgList.length" >
					<div class="diy_row" v-for="(item,index) in imgList" :key="item+index" v-show="$check_field('get',item.name,'/hotel_reservation/details') && +item.is_img_list">
						<div class="diy_title diy_list_img_title">
							<span>{{item.title}}:</span>
						</div>
						<div class="diy_field diy_img">
							<img :src="$fullUrl(o[item.name])" style="width:100%;height:100%" />
						</div>
					</div>
				</div>
				<!-- 内容 -->
				<div class="diy_list_item_box">
					<div class="diy_list_item_content" v-for="(item,index) in showItemList" :key="item+index">
						<div class="diy_row" :class="{[item.name]:true}" v-if="$check_field('get',item.name,'/hotel_reservation/details') && +item.is_img_list">
							<div class="diy_title">
								<span>{{item.title}}:</span>
							</div>
							<div class="diy_field diy_text">
								<span v-if="item.type == 'UID'" v-text="get_user_name(o[item.name])"></span>
								<span v-else-if="item.type == '日期'" v-text="$toTime(o[item.name],'yyyy-MM-dd')"></span>
								<span v-else-if="item.type == '时间'" v-text="$toTime(o[item.name],'hh:mm:ss')"></span>
								<span v-else-if="item.type == '日长'" v-text="$toTime(o[item.name],'yyyy-MM-dd hh:mm:ss')"></span>
								<span v-else v-text="o[item.name]"></span>
							</div>
						</div>
					</div>
				</div>
			</router-link>
		</div>
		<!-- 表格 -->
		<div class="diy_view_table" v-else>
			<table class="diy_table">
				<tr class="diy_row">
					<th class="diy_title" v-if="$check_field('get','hotel_name')">酒店名称
					</th>
					<th class="diy_title" v-if="$check_field('get','hotel_address')">酒店地址
					</th>
					<th class="diy_title" v-if="$check_field('get','contact_number')">联系电话
					</th>
					<th class="diy_title" v-if="$check_field('get','room_type')">房间类型
					</th>
					<th class="diy_title" v-if="$check_field('get','bed_type')">床位类型
					</th>
					<th class="diy_title" v-if="$check_field('get','number_of_rooms')">房间数量
					</th>
					<th class="diy_title" v-if="$check_field('get','room_price')">房间价格
					</th>
					<th class="diy_title" v-if="$check_field('get','room_picture')">房间图片
					</th>
				</tr>
				<tr class="diy_row" v-for="(o,i) in list" :key="o+i">
					<td class="diy_field diy_text" v-if="$check_field('get','hotel_name')">
						<span>
							{{ o["hotel_name"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','hotel_address')">
						<span>
							{{ o["hotel_address"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','contact_number')">
						<span>
							{{ o["contact_number"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','room_type')">
						<span>
							{{ o["room_type"] }}
						</span>
					</td>
					<td class="diy_field diy_text" v-if="$check_field('get','bed_type')">
						<span>
							{{ o["bed_type"] }}
						</span>
					</td>
					<td class="diy_field diy_number" v-if="$check_field('get','number_of_rooms')">
						<span>
							{{ o["number_of_rooms"] }}
						</span>
					</td>
					<td class="diy_field diy_number" v-if="$check_field('get','room_price')">
						<span>
							{{ o["room_price"] }}
						</span>
					</td>
					<td class="diy_field" v-if="$check_field('get','room_picture')">
						<img class="diy_img" :src="o['room_picture']" />
					</td>
				</tr>
			</table>
		</div>
	</div>
</template>

<script>
	export default {
		props: {
			list: {
				type: Array,
				default: function() {
					return [];
				},
			},
			show: {
				type: Boolean,
				default: function(){
					return true;
				}
			}
		},
		data() {
			return {
						imgList: [
						{
							title: "房间图片",
							name: "room_picture",
							type: "图片",
							is_img_list: "1"
						},
						],
						itemList: [
								{
									title: "酒店名称",
									name: "hotel_name",
									type: "文本",
									is_img_list: "1"
								},
								{
									title: "酒店地址",
									name: "hotel_address",
									type: "文本",
									is_img_list: "1"
								},
								{
									title: "联系电话",
									name: "contact_number",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "房间类型",
									name: "room_type",
									type: "文本",
									is_img_list: "0"
								},
								{
									title: "床位类型",
									name: "bed_type",
									type: "下拉",
									is_img_list: "0"
								},
								{
									title: "房间数量",
									name: "number_of_rooms",
									type: "数字",
									is_img_list: "0"
								},
								{
									title: "房间价格",
									name: "room_price",
									type: "数字",
									is_img_list: "0"
								},
						],
						richList: [
								{
									title: "房间详情",
									name: "room_details",
									type: "编辑"
								},
						],
			};
		},
		methods: {
		},
		created() {
		},
		computed:{
			showItemList(){
				let arr = [];
				let _type = ["视频","音频","文件"];
				this.itemList.forEach(item => {
					if(_type.indexOf(item.type) === -1 && !!+item.is_img_list){
						arr.push(item)
					}
				})
				return arr.slice(0,4);
			}
		}
	};
</script>

<style scoped>
	.media {
		display: flex;
		flex-direction: column;
		justify-content: space-between;
		flex-basis: 75%;
		min-height: 10rem;
	}

	.goods {
		display: flex;
		width: calc(25% - 1rem);
		margin: 0.5rem;
		padding: 0.5rem;
		flex-direction: column;
		justify-content: space-between;
		background-color: white;
		border-radius: 0.5rem;
	}

	.goods:hover {
		border: 0.2rem solid #909399;
		box-shadow: 0 0.1rem 0.3rem rgba(0, 0, 0, 0.15);
	}

	.goods:hover img {
		filter: blur(1px);
	}

	.price {
		font-size: 1rem;
		margin-right: 3px;
	}

	.price_ago {
		text-decoration: line-through;
		font-size: 0.5rem;
		color: #999;

	}

	.title {
		word-break: break-all;
		overflow: hidden;
		text-overflow: ellipsis;
		white-space: nowrap;
		font-weight: 700;
		padding: .25rem;
	}

	.icon_cart {
		color: #FF5722;
		float: right;
	}

	@media (max-width: 992px) {

		.goods {
			width: calc(33% - 1rem);
			;
		}

	}

	@media (max-width: 768px) {

		.goods {
			width: calc(50% - 1rem);
			;
		}

	}
</style>

