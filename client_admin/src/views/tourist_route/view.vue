<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','route_name') || $check_field('add','route_name') || $check_field('set','route_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="路线名称" prop="route_name">
					<el-input id="route_name" v-model="form['route_name']" placeholder="请输入路线名称"
							  v-if="user_group === '管理员' || (form['tourist_route_id'] && $check_field('set','route_name')) || (!form['tourist_route_id'] && $check_field('add','route_name'))" :disabled="disabledObj['route_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','route_name')">{{form['route_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','route_type') || $check_field('add','route_type') || $check_field('set','route_type')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="路线类型" prop="route_type">
					<el-input id="route_type" v-model="form['route_type']" placeholder="请输入路线类型"
							  v-if="user_group === '管理员' || (form['tourist_route_id'] && $check_field('set','route_type')) || (!form['tourist_route_id'] && $check_field('add','route_type'))" :disabled="disabledObj['route_type_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','route_type')">{{form['route_type']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','route_starting_point') || $check_field('add','route_starting_point') || $check_field('set','route_starting_point')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="路线起点" prop="route_starting_point">
					<el-input id="route_starting_point" v-model="form['route_starting_point']" placeholder="请输入路线起点"
							  v-if="user_group === '管理员' || (form['tourist_route_id'] && $check_field('set','route_starting_point')) || (!form['tourist_route_id'] && $check_field('add','route_starting_point'))" :disabled="disabledObj['route_starting_point_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','route_starting_point')">{{form['route_starting_point']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','route_end') || $check_field('add','route_end') || $check_field('set','route_end')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="路线终点" prop="route_end">
					<el-input id="route_end" v-model="form['route_end']" placeholder="请输入路线终点"
							  v-if="user_group === '管理员' || (form['tourist_route_id'] && $check_field('set','route_end')) || (!form['tourist_route_id'] && $check_field('add','route_end'))" :disabled="disabledObj['route_end_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','route_end')">{{form['route_end']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','cover_picture') || $check_field('add','cover_picture') || $check_field('set','cover_picture')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="封面图" prop="cover_picture">
					<el-upload :disabled="disabledObj['cover_picture_isDisabled']" id="cover_picture" class="avatar-uploader" drag
						accept="image/gif, image/jpeg, image/png, image/jpg" action="" :http-request="upload_cover_picture"
						:show-file-list="false" v-if="user_group === '管理员' || (form['tourist_route_id'] && $check_field('set','cover_picture')) || (!form['tourist_route_id'] && $check_field('add','cover_picture'))">
						<img v-if="form['cover_picture']" :src="$fullUrl(form['cover_picture'])" class="avatar">
						<i v-else class="el-icon-plus avatar-uploader-icon"></i>
					</el-upload>
					<el-image v-else-if="$check_field('get','cover_picture')" style="width: 100px; height: 100px"
						:src="$fullUrl(form['cover_picture'])" :preview-src-list="[$fullUrl(form['cover_picture'])]">
						<div slot="error" class="image-slot">
							<img src="../../../public/img/error.png" style="width: 90px; height: 90px" />
						</div>
					</el-image>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','applicant') || $check_field('add','applicant') || $check_field('set','applicant')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="申请人" prop="applicant">
						<div v-if="user_group !== '管理员'">
							{{ get_user_session_applicant(form['applicant']) }}
							<!--<el-input id="business_name" v-model="form['applicant']" placeholder="请输入申请人"-->
							<!--v-if="user_group === '管理员' || (form['tourist_route_id'] && $check_field('set','applicant')) || (!form['tourist_route_id'] && $check_field('add','applicant'))" :disabled="disabledObj['applicant_isDisabled']"></el-input>-->
							<!--<div v-else-if="$check_field('get','applicant')">{{form['applicant']}}</div>-->
							<el-select v-if="user_group === '管理员' || (form['tourist_route_id'] && $check_field('set','applicant')) || (!form['tourist_route_id'] && $check_field('add','applicant'))" id="applicant" v-model="form['applicant']" :disabled="disabledObj['applicant_isDisabled']">
								<el-option v-for="o in list_user_applicant" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
							<el-select v-else-if="$check_field('get','applicant')" id="applicant" v-model="form['applicant']" :disabled="true">
								<el-option v-for="o in list_user_applicant" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
						</div>
						<el-select v-else id="applicant" v-model="form['applicant']" :disabled="disabledObj['applicant_isDisabled']">
							<el-option v-for="o in list_user_applicant" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','route_details') || $check_field('add','route_details') || $check_field('set','route_details')" :xs="24" :sm="24" :lg="24" class="el_form_editor_warp">
				<el-form-item label="路线详情" prop="route_details">
					<quill-editor v-model.number="form['route_details']"
						v-if="user_group === '管理员' || (form['tourist_route_id'] && $check_field('set','route_details')) || (!form['tourist_route_id'] && $check_field('add','route_details')) ">
					</quill-editor>
					<div v-else-if="$check_field('get','route_details')" v-html="form['route_details']"></div>
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
				field: "tourist_route_id",
				url_add: "~/api/tourist_route/add?",
				url_set: "~/api/tourist_route/set?",
				url_get_obj: "~/api/tourist_route/get_obj?",
				url_upload: "~/api/tourist_route/upload?",

				query: {
					"tourist_route_id": 0,
				},

				form: {
					"route_name":'', // 路线名称
					"route_type":'', // 路线类型
					"route_starting_point":'', // 路线起点
					"route_end":'', // 路线终点
					"cover_picture":'', // 封面图
					"applicant": 0, // 申请人
					"route_details":'', // 路线详情
					"examine_state": "未审核",
					"tourist_route_id": 0, // ID

				},
				disabledObj:{
					"route_name_isDisabled": false,
					"route_type_isDisabled": false,
					"route_starting_point_isDisabled": false,
					"route_end_isDisabled": false,
					"cover_picture_isDisabled": false,
					"applicant_isDisabled": false,
					"route_details_isDisabled": false,
				},
				// 用户列表
				list_user_applicant: [],
				// 用户组
				group_user_applicant: "",
			}
		},
		methods: {
			/**
			 * 上传封面图
			 * @param {Object} param图片参数
			 */
			upload_cover_picture(param){
				this.uploadFile(param.file, "cover_picture");
			},
			/**
			 * 获取景点管理员用户列表
			 */
			async get_list_user_applicant() {
                // if(this.user_group !== "管理员" && this.form["applicant"] === 0) {
                //     this.form["applicant"] = this.user.user_id;
                // }
                var json = await this.$get("~/api/user/get_list?user_group=景点管理员");
                if(json.result && json.result.list){
                    this.list_user_applicant = json.result.list;
                }
                else if(json.error){
                    console.error(json.error);
                }
			},
			/**
			 * 获取景点管理员用户组
			 */
			async get_group_user_applicant() {
				this.form["applicant"] = this.user.user_id;
				var json = await this.$get("~/api/user_group/get_obj?name=景点管理员");
				if(json.result && json.result.obj){
					this.group_user_applicant = json.result.obj;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_session_applicant(id){
				var _this = this;
				var user_id = {"user_id":id}
				var url = "~/api/"+_this.group_user_applicant.source_table+"/get_obj?"
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
                    if (arr[i] !== "applicant") {
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
			get_user_applicant(id){
				var obj = this.list_user_applicant.getObj({"user_id":id});
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
				/**
				* 请求列表前
				* @param {Object} param
				*/
				var user_group = this.user.user_group;
				if (user_group !== "管理员") {
					switch (user_group) {
						case "申请人":
							if(param["applicant"] > 0){
								param["applicant"] = this.user.user_id;
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
				$.db.del("form");
				return param;
			},

			/**
			 * 获取对象之后
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json, func){
			},

			is_view(){
				var bl = this.user_group == "管理员";

				if(!bl){
					bl = this.$check_action('/tourist_route/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/tourist_route/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/tourist_route/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/tourist_route/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/tourist_route/view','get');
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
			this.get_list_user_applicant();
			this.get_group_user_applicant();
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
