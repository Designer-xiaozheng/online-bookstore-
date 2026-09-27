<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','name_of_scenic_spot') || $check_field('add','name_of_scenic_spot') || $check_field('set','name_of_scenic_spot')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="景点名称" prop="name_of_scenic_spot">
					<el-input id="name_of_scenic_spot" v-model="form['name_of_scenic_spot']" placeholder="请输入景点名称"
							  v-if="user_group === '管理员' || (form['ticket_check_information_id'] && $check_field('set','name_of_scenic_spot')) || (!form['ticket_check_information_id'] && $check_field('add','name_of_scenic_spot'))" :disabled="disabledObj['name_of_scenic_spot_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','name_of_scenic_spot')">{{form['name_of_scenic_spot']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','scenic_spot_type') || $check_field('add','scenic_spot_type') || $check_field('set','scenic_spot_type')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="景点类型" prop="scenic_spot_type">
					<el-input id="scenic_spot_type" v-model="form['scenic_spot_type']" placeholder="请输入景点类型"
							  v-if="user_group === '管理员' || (form['ticket_check_information_id'] && $check_field('set','scenic_spot_type')) || (!form['ticket_check_information_id'] && $check_field('add','scenic_spot_type'))" :disabled="disabledObj['scenic_spot_type_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','scenic_spot_type')">{{form['scenic_spot_type']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','scenic_spot_address') || $check_field('add','scenic_spot_address') || $check_field('set','scenic_spot_address')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="景点地址" prop="scenic_spot_address">
					<el-input id="scenic_spot_address" v-model="form['scenic_spot_address']" placeholder="请输入景点地址"
							  v-if="user_group === '管理员' || (form['ticket_check_information_id'] && $check_field('set','scenic_spot_address')) || (!form['ticket_check_information_id'] && $check_field('add','scenic_spot_address'))" :disabled="disabledObj['scenic_spot_address_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','scenic_spot_address')">{{form['scenic_spot_address']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','working_personnel') || $check_field('add','working_personnel') || $check_field('set','working_personnel')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="工作人员" prop="working_personnel">
						<el-select v-if="user_group === '管理员' || (form['ticket_check_information_id'] && $check_field('set','working_personnel')) || (!form['ticket_check_information_id'] && $check_field('add','working_personnel'))" id="working_personnel" v-model="form['working_personnel']" :disabled="disabledObj['working_personnel_isDisabled']">
							<el-option v-for="o in list_user_working_personnel" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
						<el-select v-else-if="$check_field('get','working_personnel')" id="working_personnel" v-model="form['working_personnel']" :disabled="true">
							<el-option v-for="o in list_user_working_personnel" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','ticket_user') || $check_field('add','ticket_user') || $check_field('set','ticket_user')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="购票用户" prop="ticket_user">
						<el-select v-if="user_group === '管理员' || (form['ticket_check_information_id'] && $check_field('set','ticket_user')) || (!form['ticket_check_information_id'] && $check_field('add','ticket_user'))" id="ticket_user" v-model="form['ticket_user']" :disabled="disabledObj['ticket_user_isDisabled']">
							<el-option v-for="o in list_user_ticket_user" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
						<el-select v-else-if="$check_field('get','ticket_user')" id="ticket_user" v-model="form['ticket_user']" :disabled="true">
							<el-option v-for="o in list_user_ticket_user" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','user_name') || $check_field('add','user_name') || $check_field('set','user_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="用户姓名" prop="user_name">
					<el-input id="user_name" v-model="form['user_name']" placeholder="请输入用户姓名"
							  v-if="user_group === '管理员' || (form['ticket_check_information_id'] && $check_field('set','user_name')) || (!form['ticket_check_information_id'] && $check_field('add','user_name'))" :disabled="disabledObj['user_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','user_name')">{{form['user_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','subscriber_telephone') || $check_field('add','subscriber_telephone') || $check_field('set','subscriber_telephone')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="用户电话" prop="subscriber_telephone">
					<el-input id="subscriber_telephone" v-model="form['subscriber_telephone']" placeholder="请输入用户电话"
							  v-if="user_group === '管理员' || (form['ticket_check_information_id'] && $check_field('set','subscriber_telephone')) || (!form['ticket_check_information_id'] && $check_field('add','subscriber_telephone'))" :disabled="disabledObj['subscriber_telephone_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','subscriber_telephone')">{{form['subscriber_telephone']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','health_code') || $check_field('add','health_code') || $check_field('set','health_code')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="健康码" prop="health_code">
					<el-upload :disabled="disabledObj['health_code_isDisabled']" id="health_code" class="avatar-uploader" drag
						accept="image/gif, image/jpeg, image/png, image/jpg" action="" :http-request="upload_health_code"
						:show-file-list="false" v-if="user_group === '管理员' || (form['ticket_check_information_id'] && $check_field('set','health_code')) || (!form['ticket_check_information_id'] && $check_field('add','health_code'))">
						<img v-if="form['health_code']" :src="$fullUrl(form['health_code'])" class="avatar">
						<i v-else class="el-icon-plus avatar-uploader-icon"></i>
					</el-upload>
					<el-image v-else-if="$check_field('get','health_code')" style="width: 100px; height: 100px"
						:src="$fullUrl(form['health_code'])" :preview-src-list="[$fullUrl(form['health_code'])]">
						<div slot="error" class="image-slot">
							<img src="../../../public/img/error.png" style="width: 90px; height: 90px" />
						</div>
					</el-image>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','travel_code') || $check_field('add','travel_code') || $check_field('set','travel_code')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="行程码" prop="travel_code">
					<el-upload :disabled="disabledObj['travel_code_isDisabled']" id="travel_code" class="avatar-uploader" drag
						accept="image/gif, image/jpeg, image/png, image/jpg" action="" :http-request="upload_travel_code"
						:show-file-list="false" v-if="user_group === '管理员' || (form['ticket_check_information_id'] && $check_field('set','travel_code')) || (!form['ticket_check_information_id'] && $check_field('add','travel_code'))">
						<img v-if="form['travel_code']" :src="$fullUrl(form['travel_code'])" class="avatar">
						<i v-else class="el-icon-plus avatar-uploader-icon"></i>
					</el-upload>
					<el-image v-else-if="$check_field('get','travel_code')" style="width: 100px; height: 100px"
						:src="$fullUrl(form['travel_code'])" :preview-src-list="[$fullUrl(form['travel_code'])]">
						<div slot="error" class="image-slot">
							<img src="../../../public/img/error.png" style="width: 90px; height: 90px" />
						</div>
					</el-image>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','ticket_checking_time') || $check_field('add','ticket_checking_time') || $check_field('set','ticket_checking_time')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="验票时间" prop="ticket_checking_time">
					<el-date-picker :disabled="disabledObj['ticket_checking_time_isDisabled']" v-if="user_group === '管理员' || (form['ticket_check_information_id'] && $check_field('set','ticket_checking_time')) || (!form['ticket_check_information_id'] && $check_field('add','ticket_checking_time'))" id="ticket_checking_time"
						v-model="form['ticket_checking_time']" type="datetime" placeholder="选择日期时间">
					</el-date-picker>
					<div v-else-if="$check_field('get','ticket_checking_time')">{{form['ticket_checking_time']}}</div>
				</el-form-item>
			</el-col>
			<el-col :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="审核状态" prop="examine_state">
					<el-select id="examine_state" v-model="form['examine_state']"
						v-if="user_group === '管理员' || (form['examine_state'] && $check_examine()) || (!form['examine_state'] && $check_examine())">
						<el-option key="未审核" label="未审核" value="未审核"></el-option>
						<el-option key="已通过" label="已通过" value="已通过"></el-option>
						<el-option key="未通过" label="未通过" value="未通过"></el-option>
					</el-select>
					<div v-else>{{form["examine_state"]}}</div>
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
				field: "ticket_check_information_id",
				url_add: "~/api/ticket_check_information/add?",
				url_set: "~/api/ticket_check_information/set?",
				url_get_obj: "~/api/ticket_check_information/get_obj?",
				url_upload: "~/api/ticket_check_information/upload?",

				query: {
					"ticket_check_information_id": 0,
				},

				form: {
					"name_of_scenic_spot":'', // 景点名称
					"scenic_spot_type":'', // 景点类型
					"scenic_spot_address":'', // 景点地址
					"working_personnel": 0, // 工作人员
					"ticket_user": 0, // 购票用户
					"user_name":'', // 用户姓名
					"subscriber_telephone":'', // 用户电话
					"health_code":'', // 健康码
					"travel_code":'', // 行程码
					"ticket_checking_time":'', // 验票时间
					"examine_state": "未审核",
					"ticket_check_information_id": 0, // ID

				},
				disabledObj:{
					"name_of_scenic_spot_isDisabled": false,
					"scenic_spot_type_isDisabled": false,
					"scenic_spot_address_isDisabled": false,
					"working_personnel_isDisabled": false,
					"ticket_user_isDisabled": false,
					"user_name_isDisabled": false,
					"subscriber_telephone_isDisabled": false,
					"health_code_isDisabled": false,
					"travel_code_isDisabled": false,
					"ticket_checking_time_isDisabled": false,
				},
				// 用户列表
				list_user_working_personnel: [],
				// 用户列表
				list_user_ticket_user: [],
			}
		},
		methods: {
			/**
			 * 获取景点管理员用户列表
			 */
			async get_list_user_working_personnel() {
                // if(this.user_group !== "管理员" && this.form["working_personnel"] === 0) {
                //     this.form["working_personnel"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=景点管理员");
                if(json.result && json.result.list){
                    this.list_user_working_personnel = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
			get_user_working_personnel(id){
				var obj = this.list_user_working_personnel.getObj({"user_id":id});
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
			 * 获取普通用户用户列表
			 */
			async get_list_user_ticket_user() {
                // if(this.user_group !== "管理员" && this.form["ticket_user"] === 0) {
                //     this.form["ticket_user"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=普通用户");
                if(json.result && json.result.list){
                    this.list_user_ticket_user = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
			get_user_ticket_user(id){
				var obj = this.list_user_ticket_user.getObj({"user_id":id});
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
			 * 上传健康码
			 * @param {Object} param图片参数
			 */
			upload_health_code(param){
				this.uploadFile(param.file, "health_code");
			},
			/**
			 * 上传行程码
			 * @param {Object} param图片参数
			 */
			upload_travel_code(param){
				this.uploadFile(param.file, "travel_code");
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
						case "工作人员":
							if(param["working_personnel"] > 0){
								param["working_personnel"] = this.user.user_id;
							}
							break;
						case "购票用户":
							if(param["ticket_user"] > 0){
								param["ticket_user"] = this.user.user_id;
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
				this.form["ticket_checking_time"] = this.$toTime(parseInt(this.form["ticket_checking_time"]),"yyyy-MM-dd hh:mm:ss")
				$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){
        if(this.form["ticket_checking_time"]=="0000-00-00 00:00:00"){
          this.form["ticket_checking_time"] = null;
        }
				if(parseInt(this.form["ticket_checking_time"]) > 9999){
					this.form["ticket_checking_time"] = this.$toTime(parseInt(this.form["ticket_checking_time"]),"yyyy-MM-dd hh:mm:ss")
				}
			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/ticket_check_information/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/ticket_check_information/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/ticket_check_information/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/ticket_check_information/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/ticket_check_information/view','get');
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
			this.get_list_user_working_personnel();
			this.get_list_user_ticket_user();
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
