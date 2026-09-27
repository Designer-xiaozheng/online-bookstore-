<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','hotel_name') || $check_field('add','hotel_name') || $check_field('set','hotel_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="酒店名称" prop="hotel_name">
					<el-input id="hotel_name" v-model="form['hotel_name']" placeholder="请输入酒店名称"
							  v-if="user_group === '管理员' || (form['room_cancellation_id'] && $check_field('set','hotel_name')) || (!form['room_cancellation_id'] && $check_field('add','hotel_name'))" :disabled="disabledObj['hotel_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','hotel_name')">{{form['hotel_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','hotel_address') || $check_field('add','hotel_address') || $check_field('set','hotel_address')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="酒店地址" prop="hotel_address">
					<el-input id="hotel_address" v-model="form['hotel_address']" placeholder="请输入酒店地址"
							  v-if="user_group === '管理员' || (form['room_cancellation_id'] && $check_field('set','hotel_address')) || (!form['room_cancellation_id'] && $check_field('add','hotel_address'))" :disabled="disabledObj['hotel_address_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','hotel_address')">{{form['hotel_address']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','contact_number') || $check_field('add','contact_number') || $check_field('set','contact_number')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="联系电话" prop="contact_number">
					<el-input id="contact_number" v-model="form['contact_number']" placeholder="请输入联系电话"
							  v-if="user_group === '管理员' || (form['room_cancellation_id'] && $check_field('set','contact_number')) || (!form['room_cancellation_id'] && $check_field('add','contact_number'))" :disabled="disabledObj['contact_number_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','contact_number')">{{form['contact_number']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','room_type') || $check_field('add','room_type') || $check_field('set','room_type')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="房间类型" prop="room_type">
					<el-input id="room_type" v-model="form['room_type']" placeholder="请输入房间类型"
							  v-if="user_group === '管理员' || (form['room_cancellation_id'] && $check_field('set','room_type')) || (!form['room_cancellation_id'] && $check_field('add','room_type'))" :disabled="disabledObj['room_type_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','room_type')">{{form['room_type']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','bed_type') || $check_field('add','bed_type') || $check_field('set','bed_type')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="床位类型" prop="bed_type">
					<el-input id="bed_type" v-model="form['bed_type']" placeholder="请输入床位类型"
							  v-if="user_group === '管理员' || (form['room_cancellation_id'] && $check_field('set','bed_type')) || (!form['room_cancellation_id'] && $check_field('add','bed_type'))" :disabled="disabledObj['bed_type_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','bed_type')">{{form['bed_type']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','room_price') || $check_field('add','room_price') || $check_field('set','room_price')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="房间价格" prop="room_price">
					<el-input id="room_price" v-model="form['room_price']" placeholder="请输入房间价格"
							  v-if="user_group === '管理员' || (form['room_cancellation_id'] && $check_field('set','room_price')) || (!form['room_cancellation_id'] && $check_field('add','room_price'))" :disabled="disabledObj['room_price_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','room_price')">{{form['room_price']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','room_picture') || $check_field('add','room_picture') || $check_field('set','room_picture')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="房间图片" prop="room_picture">
					<el-upload :disabled="disabledObj['room_picture_isDisabled']" id="room_picture" class="avatar-uploader" drag
						accept="image/gif, image/jpeg, image/png, image/jpg" action="" :http-request="upload_room_picture"
						:show-file-list="false" v-if="user_group === '管理员' || (form['room_cancellation_id'] && $check_field('set','room_picture')) || (!form['room_cancellation_id'] && $check_field('add','room_picture'))">
						<img v-if="form['room_picture']" :src="$fullUrl(form['room_picture'])" class="avatar">
						<i v-else class="el-icon-plus avatar-uploader-icon"></i>
					</el-upload>
					<el-image v-else-if="$check_field('get','room_picture')" style="width: 100px; height: 100px"
						:src="$fullUrl(form['room_picture'])" :preview-src-list="[$fullUrl(form['room_picture'])]">
						<div slot="error" class="image-slot">
							<img src="../../../public/img/error.png" style="width: 90px; height: 90px" />
						</div>
					</el-image>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','scheduled_user') || $check_field('add','scheduled_user') || $check_field('set','scheduled_user')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="预定用户" prop="scheduled_user">
						<div v-if="user_group !== '管理员'">
							{{ get_user_session_scheduled_user(form['scheduled_user']) }}
							<!--<el-input id="business_name" v-model="form['scheduled_user']" placeholder="请输入预定用户"-->
							<!--v-if="user_group === '管理员' || (form['room_cancellation_id'] && $check_field('set','scheduled_user')) || (!form['room_cancellation_id'] && $check_field('add','scheduled_user'))" :disabled="disabledObj['scheduled_user_isDisabled']"></el-input>-->
							<!--<div v-else-if="$check_field('get','scheduled_user')">{{form['scheduled_user']}}</div>-->
							<el-select v-if="user_group === '管理员' || (form['room_cancellation_id'] && $check_field('set','scheduled_user')) || (!form['room_cancellation_id'] && $check_field('add','scheduled_user'))" id="scheduled_user" v-model="form['scheduled_user']" :disabled="disabledObj['scheduled_user_isDisabled']">
								<el-option v-for="o in list_user_scheduled_user" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
							<el-select v-else-if="$check_field('get','scheduled_user')" id="scheduled_user" v-model="form['scheduled_user']" :disabled="true">
								<el-option v-for="o in list_user_scheduled_user" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
						</div>
						<el-select v-else id="scheduled_user" v-model="form['scheduled_user']" :disabled="disabledObj['scheduled_user_isDisabled']">
							<el-option v-for="o in list_user_scheduled_user" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','user_name') || $check_field('add','user_name') || $check_field('set','user_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="用户姓名" prop="user_name">
					<el-input id="user_name" v-model="form['user_name']" placeholder="请输入用户姓名"
							  v-if="user_group === '管理员' || (form['room_cancellation_id'] && $check_field('set','user_name')) || (!form['room_cancellation_id'] && $check_field('add','user_name'))" :disabled="disabledObj['user_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','user_name')">{{form['user_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','subscriber_telephone') || $check_field('add','subscriber_telephone') || $check_field('set','subscriber_telephone')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="用户电话" prop="subscriber_telephone">
					<el-input id="subscriber_telephone" v-model="form['subscriber_telephone']" placeholder="请输入用户电话"
							  v-if="user_group === '管理员' || (form['room_cancellation_id'] && $check_field('set','subscriber_telephone')) || (!form['room_cancellation_id'] && $check_field('add','subscriber_telephone'))" :disabled="disabledObj['subscriber_telephone_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','subscriber_telephone')">{{form['subscriber_telephone']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','scheduled_quantity') || $check_field('add','scheduled_quantity') || $check_field('set','scheduled_quantity')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="预定数量" prop="scheduled_quantity">
					<el-input id="scheduled_quantity" v-model="form['scheduled_quantity']" placeholder="请输入预定数量"
							  v-if="user_group === '管理员' || (form['room_cancellation_id'] && $check_field('set','scheduled_quantity')) || (!form['room_cancellation_id'] && $check_field('add','scheduled_quantity'))" :disabled="disabledObj['scheduled_quantity_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','scheduled_quantity')">{{form['scheduled_quantity']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','payment_amount') || $check_field('add','payment_amount') || $check_field('set','payment_amount')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="支付金额" prop="payment_amount">
					<el-input id="payment_amount" v-model="form['payment_amount']" placeholder="请输入支付金额"
							  v-if="user_group === '管理员' || (form['room_cancellation_id'] && $check_field('set','payment_amount')) || (!form['room_cancellation_id'] && $check_field('add','payment_amount'))" :disabled="disabledObj['payment_amount_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','payment_amount')">{{form['payment_amount']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','scheduled_time') || $check_field('add','scheduled_time') || $check_field('set','scheduled_time')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="预定时间" prop="scheduled_time">
					<el-date-picker :disabled="disabledObj['scheduled_time_isDisabled']" v-if="user_group === '管理员' || (form['room_cancellation_id'] && $check_field('set','scheduled_time')) || (!form['room_cancellation_id'] && $check_field('add','scheduled_time'))" id="scheduled_time"
						v-model="form['scheduled_time']" type="datetime" placeholder="选择日期时间">
					</el-date-picker>
					<div v-else-if="$check_field('get','scheduled_time')">{{form['scheduled_time']}}</div>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8" class="el_form_btn_warp">
				<el-form-item>
					<el-button type="primary" @click="submit()">提交</el-button>
					<el-button @click="cancel()">取消</el-button>
				</el-form-item>
			</el-col>

		</el-form>
	</el-main>
</template>

<script>
	import mixin from "@/mixins/page.js";

	export default {
		mixins: [mixin],
		data() {
			return {
				field: "room_cancellation_id",
				url_add: "~/api/room_cancellation/add?",
				url_set: "~/api/room_cancellation/set?",
				url_get_obj: "~/api/room_cancellation/get_obj?",
				url_upload: "~/api/room_cancellation/upload?",

				query: {
					"room_cancellation_id": 0,
				},

				form: {
					"hotel_name":'', // 酒店名称
					"hotel_address":'', // 酒店地址
					"contact_number":'', // 联系电话
					"room_type":'', // 房间类型
					"bed_type":'', // 床位类型
					"room_price":'', // 房间价格
					"room_picture":'', // 房间图片
					"scheduled_user": 0, // 预定用户
					"user_name":'', // 用户姓名
					"subscriber_telephone":'', // 用户电话
					"scheduled_quantity":'', // 预定数量
					"payment_amount":'', // 支付金额
					"scheduled_time":'', // 预定时间
					"room_cancellation_id": 0, // ID

				},
				disabledObj:{
					"hotel_name_isDisabled": false,
					"hotel_address_isDisabled": false,
					"contact_number_isDisabled": false,
					"room_type_isDisabled": false,
					"bed_type_isDisabled": false,
					"room_price_isDisabled": false,
					"room_picture_isDisabled": false,
					"scheduled_user_isDisabled": false,
					"user_name_isDisabled": false,
					"subscriber_telephone_isDisabled": false,
					"scheduled_quantity_isDisabled": false,
					"payment_amount_isDisabled": false,
					"scheduled_time_isDisabled": false,
				},
				// 用户列表
				list_user_scheduled_user: [],
				// 用户组
				group_user_scheduled_user: "",
			}
		},
		methods: {
			/**
			 * 上传房间图片
			 * @param {Object} param图片参数
			 */
			upload_room_picture(param){
				this.uploadFile(param.file, "room_picture");
			},
			/**
			 * 获取普通用户用户列表
			 */
			async get_list_user_scheduled_user() {
                // if(this.user_group !== "管理员" && this.form["scheduled_user"] === 0) {
                //     this.form["scheduled_user"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=普通用户");
                if(json.result && json.result.list){
                    this.list_user_scheduled_user = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
			/**
			 * 获取普通用户用户组
			 */
			async get_group_user_scheduled_user() {
				this.form["scheduled_user"] = this.user.user_id;
				var json = await this.$get("~/api/user_group/get_obj?name=普通用户");
				if(json.result && json.result.obj){
					this.group_user_scheduled_user = json.result.obj;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_session_scheduled_user(id){
				var _this = this;
				var user_id = {"user_id":id}
				var url = "~/api/"+_this.group_user_scheduled_user.source_table+"/get_obj?"
				this.$get(url, user_id, function(res) {
					if (res.result && res.result.obj) {
						var arr = []
						for (let key in res.result.obj) {
							arr.push(key)
						}
						var arrForm = []
						for (let key in _this.form) {
							arrForm.push(key)
						}
						for (var i=0;i<arr.length;i++){
						  if (arr[i]!=='examine_state' && arr[i]!=='examine_reply') {
                for (var j = 0; j < arrForm.length; j++) {
                  if (arr[i] === arrForm[j]) {
                    if (arr[i] !== "scheduled_user") {
                      _this.form[arrForm[j]] = res.result.obj[arr[i]]
                      _this.disabledObj[arrForm[j] + '_isDisabled'] = true
                      break;
                    } else {
                      _this.disabledObj[arrForm[j] + '_isDisabled'] = true
                    }
                  }
                }
              }
						}
					}
				});
			},
			get_user_scheduled_user(id){
				var obj = this.list_user_scheduled_user.getObj({"user_id":id});
				var ret = "";
				if(obj){
					if(obj.nickname){
						ret = obj.nickname;}
					else{
						ret = obj.username;
					}
				}
				return ret;
			},

			/**
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
				// 获取缓存数据附加
				form = $.db.get("form");
				$.push(this.form ,form);
				/**
				* 请求列表前
				* @param {Object} param
				*/
				var user_group = this.user.user_group;
				if (user_group !== "管理员") {
					switch (user_group) {
						case "预定用户":
							if(param["scheduled_user"] > 0){
								param["scheduled_user"] = this.user.user_id;
							}
							break;
					}
				}
				if(this.form && form){
					Object.keys(this.form).forEach(key => {
						Object.keys(form).forEach(dbKey => {
							// if(dbKey === "charging_standard"){
							// 	this.form['charging_rules'] = form[dbKey];
							// 	this.disabledObj['charging_rules_isDisabled'] = true;
							// };
							if(key === dbKey){
								this.disabledObj[key+'_isDisabled'] = true;
							}
						})
					})
				}
				this.form["scheduled_time"] = this.$toTime(parseInt(this.form["scheduled_time"]),"yyyy-MM-dd hh:mm:ss")
				$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){
        if(this.form["scheduled_time"]=="0000-00-00 00:00:00"){
          this.form["scheduled_time"] = null;
        }
				if(parseInt(this.form["scheduled_time"]) > 9999){
					this.form["scheduled_time"] = this.$toTime(parseInt(this.form["scheduled_time"]),"yyyy-MM-dd hh:mm:ss")
				}
			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/room_cancellation/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/room_cancellation/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/room_cancellation/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/room_cancellation/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/room_cancellation/view','get');
					console.log(bl ? "你有视图查询权限视作有查询权限" : "你没有视图查询权限");
				}

				console.log(bl ? "具有当前页面的查看权，请注意这不代表你有字段的查看权" : "无权查看当前页，请注意即便有字段查询权限没有页面查询权限也不行");

				return bl;
			},
			/**
			 * 上传文件
			 * @param {Object} param
			 */
			uploadimg(param) {
				this.uploadFile(param.file, "avatar");
			},

		},
		created() {
			this.get_list_user_scheduled_user();
			this.get_group_user_scheduled_user();
		},
	}
</script>

<style>
	.avatar-uploader .el-upload {
		border: 1px dashed #d9d9d9;
		border-radius: 6px;
		cursor: pointer;
		position: relative;
		overflow: hidden;
	}

	.avatar-uploader .el-upload:hover {
		border-color: #409EFF;
	}

	.avatar-uploader-icon {
		font-size: 28px;
		color: #8c939d;
		width: 178px;
		height: 178px;
		line-height: 178px;
		text-align: center;
	}

	.avatar {
		width: 178px;
		height: 178px;
		display: block;
	}
</style>
