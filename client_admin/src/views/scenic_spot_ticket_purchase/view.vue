<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','name_of_scenic_spot') || $check_field('add','name_of_scenic_spot') || $check_field('set','name_of_scenic_spot')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="景点名称" prop="name_of_scenic_spot">
					<el-input id="name_of_scenic_spot" v-model="form['name_of_scenic_spot']" placeholder="请输入景点名称"
							  v-if="user_group === '管理员' || (form['scenic_spot_ticket_purchase_id'] && $check_field('set','name_of_scenic_spot')) || (!form['scenic_spot_ticket_purchase_id'] && $check_field('add','name_of_scenic_spot'))" :disabled="disabledObj['name_of_scenic_spot_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','name_of_scenic_spot')">{{form['name_of_scenic_spot']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','scenic_spot_type') || $check_field('add','scenic_spot_type') || $check_field('set','scenic_spot_type')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="景点类型" prop="scenic_spot_type">
					<el-input id="scenic_spot_type" v-model="form['scenic_spot_type']" placeholder="请输入景点类型"
							  v-if="user_group === '管理员' || (form['scenic_spot_ticket_purchase_id'] && $check_field('set','scenic_spot_type')) || (!form['scenic_spot_ticket_purchase_id'] && $check_field('add','scenic_spot_type'))" :disabled="disabledObj['scenic_spot_type_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','scenic_spot_type')">{{form['scenic_spot_type']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','scenic_spot_address') || $check_field('add','scenic_spot_address') || $check_field('set','scenic_spot_address')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="景点地址" prop="scenic_spot_address">
					<el-input id="scenic_spot_address" v-model="form['scenic_spot_address']" placeholder="请输入景点地址"
							  v-if="user_group === '管理员' || (form['scenic_spot_ticket_purchase_id'] && $check_field('set','scenic_spot_address')) || (!form['scenic_spot_ticket_purchase_id'] && $check_field('add','scenic_spot_address'))" :disabled="disabledObj['scenic_spot_address_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','scenic_spot_address')">{{form['scenic_spot_address']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','ticket_price') || $check_field('add','ticket_price') || $check_field('set','ticket_price')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="门票价格" prop="ticket_price">
					<el-input-number id="ticket_price" v-model.number="form['ticket_price']"
						v-if="user_group === '管理员' || (form['scenic_spot_ticket_purchase_id'] && $check_field('set','ticket_price')) || (!form['scenic_spot_ticket_purchase_id'] && $check_field('add','ticket_price'))" :disabled="disabledObj['ticket_price_isDisabled']"></el-input-number>
					<div v-else-if="$check_field('get','ticket_price')">{{form['ticket_price']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','working_personnel') || $check_field('add','working_personnel') || $check_field('set','working_personnel')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="工作人员" prop="working_personnel">
						<div v-if="user_group !== '管理员'">
							{{ get_user_session_working_personnel(form['working_personnel']) }}
							<!--<el-input id="business_name" v-model="form['working_personnel']" placeholder="请输入工作人员"-->
							<!--v-if="user_group === '管理员' || (form['scenic_spot_ticket_purchase_id'] && $check_field('set','working_personnel')) || (!form['scenic_spot_ticket_purchase_id'] && $check_field('add','working_personnel'))" :disabled="disabledObj['working_personnel_isDisabled']"></el-input>-->
							<!--<div v-else-if="$check_field('get','working_personnel')">{{form['working_personnel']}}</div>-->
							<el-select v-if="user_group === '管理员' || (form['scenic_spot_ticket_purchase_id'] && $check_field('set','working_personnel')) || (!form['scenic_spot_ticket_purchase_id'] && $check_field('add','working_personnel'))" id="working_personnel" v-model="form['working_personnel']" :disabled="disabledObj['working_personnel_isDisabled']">
								<el-option v-for="o in list_user_working_personnel" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
							<el-select v-else-if="$check_field('get','working_personnel')" id="working_personnel" v-model="form['working_personnel']" :disabled="true">
								<el-option v-for="o in list_user_working_personnel" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
										   :value="o['user_id']">
								</el-option>
							</el-select>
						</div>
						<el-select v-else id="working_personnel" v-model="form['working_personnel']" :disabled="disabledObj['working_personnel_isDisabled']">
							<el-option v-for="o in list_user_working_personnel" :key="o['username']" :label="o['nickname'] + '-' + o['username']"
									   :value="o['user_id']">
							</el-option>
						</el-select>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','opening_hours') || $check_field('add','opening_hours') || $check_field('set','opening_hours')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="开放时间" prop="opening_hours">
					<el-input id="opening_hours" v-model="form['opening_hours']" placeholder="请输入开放时间"
							  v-if="user_group === '管理员' || (form['scenic_spot_ticket_purchase_id'] && $check_field('set','opening_hours')) || (!form['scenic_spot_ticket_purchase_id'] && $check_field('add','opening_hours'))" :disabled="disabledObj['opening_hours_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','opening_hours')">{{form['opening_hours']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','scenic_spot_pictures') || $check_field('add','scenic_spot_pictures') || $check_field('set','scenic_spot_pictures')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="景点图片" prop="scenic_spot_pictures">
					<el-upload :disabled="disabledObj['scenic_spot_pictures_isDisabled']" id="scenic_spot_pictures" class="avatar-uploader" drag
						accept="image/gif, image/jpeg, image/png, image/jpg" action="" :http-request="upload_scenic_spot_pictures"
						:show-file-list="false" v-if="user_group === '管理员' || (form['scenic_spot_ticket_purchase_id'] && $check_field('set','scenic_spot_pictures')) || (!form['scenic_spot_ticket_purchase_id'] && $check_field('add','scenic_spot_pictures'))">
						<img v-if="form['scenic_spot_pictures']" :src="$fullUrl(form['scenic_spot_pictures'])" class="avatar">
						<i v-else class="el-icon-plus avatar-uploader-icon"></i>
					</el-upload>
					<el-image v-else-if="$check_field('get','scenic_spot_pictures')" style="width: 100px; height: 100px"
						:src="$fullUrl(form['scenic_spot_pictures'])" :preview-src-list="[$fullUrl(form['scenic_spot_pictures'])]">
						<div slot="error" class="image-slot">
							<img src="../../../public/img/error.png" style="width: 90px; height: 90px" />
						</div>
					</el-image>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','ticket_purchase_instructions') || $check_field('add','ticket_purchase_instructions') || $check_field('set','ticket_purchase_instructions')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="购票须知" prop="ticket_purchase_instructions">
					<el-input type="textarea" id="ticket_purchase_instructions" v-model="form['ticket_purchase_instructions']" placeholder="请输入购票须知"
						v-if="user_group === '管理员' || (form['scenic_spot_ticket_purchase_id'] && $check_field('set','ticket_purchase_instructions')) || (!form['scenic_spot_ticket_purchase_id'] && $check_field('add','ticket_purchase_instructions'))" :disabled="disabledObj['ticket_purchase_instructions_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','ticket_purchase_instructions')">{{form['ticket_purchase_instructions']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','introduction_to_scenic_spots') || $check_field('add','introduction_to_scenic_spots') || $check_field('set','introduction_to_scenic_spots')" :xs="24" :sm="24" :lg="24" class="el_form_editor_warp">
				<el-form-item label="景点介绍" prop="introduction_to_scenic_spots">
					<quill-editor v-model.number="form['introduction_to_scenic_spots']"
						v-if="user_group === '管理员' || (form['scenic_spot_ticket_purchase_id'] && $check_field('set','introduction_to_scenic_spots')) || (!form['scenic_spot_ticket_purchase_id'] && $check_field('add','introduction_to_scenic_spots')) ">
					</quill-editor>
					<div v-else-if="$check_field('get','introduction_to_scenic_spots')" v-html="form['introduction_to_scenic_spots']"></div>
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
				field: "scenic_spot_ticket_purchase_id",
				url_add: "~/api/scenic_spot_ticket_purchase/add?",
				url_set: "~/api/scenic_spot_ticket_purchase/set?",
				url_get_obj: "~/api/scenic_spot_ticket_purchase/get_obj?",
				url_upload: "~/api/scenic_spot_ticket_purchase/upload?",

				query: {
					"scenic_spot_ticket_purchase_id": 0,
				},

				form: {
					"name_of_scenic_spot":'', // 景点名称
					"scenic_spot_type":'', // 景点类型
					"scenic_spot_address":'', // 景点地址
					"ticket_price":0, // 门票价格
					"working_personnel": 0, // 工作人员
					"opening_hours":'', // 开放时间
					"scenic_spot_pictures":'', // 景点图片
					"ticket_purchase_instructions":'', // 购票须知
					"introduction_to_scenic_spots":'', // 景点介绍
					"scenic_spot_ticket_purchase_id": 0, // ID

				},
				disabledObj:{
					"name_of_scenic_spot_isDisabled": false,
					"scenic_spot_type_isDisabled": false,
					"scenic_spot_address_isDisabled": false,
          "ticket_price_isDisabled": false,
					"working_personnel_isDisabled": false,
					"opening_hours_isDisabled": false,
					"scenic_spot_pictures_isDisabled": false,
					"ticket_purchase_instructions_isDisabled": false,
					"introduction_to_scenic_spots_isDisabled": false,
				},
				// 用户列表
				list_user_working_personnel: [],
				// 用户组
				group_user_working_personnel: "",
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
			/**
			 * 获取景点管理员用户组
			 */
			async get_group_user_working_personnel() {
				this.form["working_personnel"] = this.user.user_id;
				var json = await this.$get("~/api/user_group/get_obj?name=景点管理员");
				if(json.result && json.result.obj){
					this.group_user_working_personnel = json.result.obj;
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			get_user_session_working_personnel(id){
				var _this = this;
				var user_id = {"user_id":id}
				var url = "~/api/"+_this.group_user_working_personnel.source_table+"/get_obj?"
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
                    if (arr[i] !== "working_personnel") {
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
			 * 上传景点图片
			 * @param {Object} param图片参数
			 */
			upload_scenic_spot_pictures(param){
				this.uploadFile(param.file, "scenic_spot_pictures");
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
						case "工作人员":
							if(param["working_personnel"] > 0){
								param["working_personnel"] = this.user.user_id;
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
					bl = this.$check_action('/scenic_spot_ticket_purchase/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/scenic_spot_ticket_purchase/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/scenic_spot_ticket_purchase/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/scenic_spot_ticket_purchase/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/scenic_spot_ticket_purchase/view','get');
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
			this.get_group_user_working_personnel();
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
