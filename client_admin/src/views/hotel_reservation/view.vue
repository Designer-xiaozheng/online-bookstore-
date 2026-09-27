<template>
	<el-main class="bg edit_wrap">
		<el-form ref="form" :model="form" status-icon label-width="120px" v-if="is_view()">
			<el-col v-if="user_group === '管理员' || $check_field('get','hotel_name') || $check_field('add','hotel_name') || $check_field('set','hotel_name')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="酒店名称" prop="hotel_name">
					<el-input id="hotel_name" v-model="form['hotel_name']" placeholder="请输入酒店名称"
							  v-if="user_group === '管理员' || (form['hotel_reservation_id'] && $check_field('set','hotel_name')) || (!form['hotel_reservation_id'] && $check_field('add','hotel_name'))" :disabled="disabledObj['hotel_name_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','hotel_name')">{{form['hotel_name']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','hotel_address') || $check_field('add','hotel_address') || $check_field('set','hotel_address')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="酒店地址" prop="hotel_address">
					<el-input id="hotel_address" v-model="form['hotel_address']" placeholder="请输入酒店地址"
							  v-if="user_group === '管理员' || (form['hotel_reservation_id'] && $check_field('set','hotel_address')) || (!form['hotel_reservation_id'] && $check_field('add','hotel_address'))" :disabled="disabledObj['hotel_address_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','hotel_address')">{{form['hotel_address']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','contact_number') || $check_field('add','contact_number') || $check_field('set','contact_number')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="联系电话" prop="contact_number">
					<el-input id="contact_number" v-model="form['contact_number']" placeholder="请输入联系电话"
							  v-if="user_group === '管理员' || (form['hotel_reservation_id'] && $check_field('set','contact_number')) || (!form['hotel_reservation_id'] && $check_field('add','contact_number'))" :disabled="disabledObj['contact_number_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','contact_number')">{{form['contact_number']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','room_type') || $check_field('add','room_type') || $check_field('set','room_type')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="房间类型" prop="room_type">
					<el-input id="room_type" v-model="form['room_type']" placeholder="请输入房间类型"
							  v-if="user_group === '管理员' || (form['hotel_reservation_id'] && $check_field('set','room_type')) || (!form['hotel_reservation_id'] && $check_field('add','room_type'))" :disabled="disabledObj['room_type_isDisabled']"></el-input>
					<div v-else-if="$check_field('get','room_type')">{{form['room_type']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','bed_type') || $check_field('add','bed_type') || $check_field('set','bed_type')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="床位类型" prop="bed_type">
					<el-select id="bed_type" v-model="form['bed_type']"
						v-if="user_group === '管理员' || (form['hotel_reservation_id'] && $check_field('set','bed_type')) || (!form['hotel_reservation_id'] && $check_field('add','bed_type'))">
						<el-option v-for="o in list_bed_type" :key="o" :label="o" :value="o">
						</el-option>
					</el-select>
					<div v-else-if="$check_field('get','bed_type')">{{form['bed_type']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','number_of_rooms') || $check_field('add','number_of_rooms') || $check_field('set','number_of_rooms')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="房间数量" prop="number_of_rooms">
					<el-input-number id="number_of_rooms" v-model.number="form['number_of_rooms']"
						v-if="user_group === '管理员' || (form['hotel_reservation_id'] && $check_field('set','number_of_rooms')) || (!form['hotel_reservation_id'] && $check_field('add','number_of_rooms'))" :disabled="disabledObj['number_of_rooms_isDisabled']"></el-input-number>
					<div v-else-if="$check_field('get','number_of_rooms')">{{form['number_of_rooms']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','room_price') || $check_field('add','room_price') || $check_field('set','room_price')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="房间价格" prop="room_price">
					<el-input-number id="room_price" v-model.number="form['room_price']"
						v-if="user_group === '管理员' || (form['hotel_reservation_id'] && $check_field('set','room_price')) || (!form['hotel_reservation_id'] && $check_field('add','room_price'))" :disabled="disabledObj['room_price_isDisabled']"></el-input-number>
					<div v-else-if="$check_field('get','room_price')">{{form['room_price']}}</div>
				</el-form-item>
			</el-col>
			<el-col v-if="user_group === '管理员' || $check_field('get','room_picture') || $check_field('add','room_picture') || $check_field('set','room_picture')" :xs="24" :sm="12" :lg="8" class="el_form_item_warp">
				<el-form-item label="房间图片" prop="room_picture">
					<el-upload :disabled="disabledObj['room_picture_isDisabled']" id="room_picture" class="avatar-uploader" drag
						accept="image/gif, image/jpeg, image/png, image/jpg" action="" :http-request="upload_room_picture"
						:show-file-list="false" v-if="user_group === '管理员' || (form['hotel_reservation_id'] && $check_field('set','room_picture')) || (!form['hotel_reservation_id'] && $check_field('add','room_picture'))">
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
			<el-col v-if="user_group === '管理员' || $check_field('get','room_details') || $check_field('add','room_details') || $check_field('set','room_details')" :xs="24" :sm="24" :lg="24" class="el_form_editor_warp">
				<el-form-item label="房间详情" prop="room_details">
					<quill-editor v-model.number="form['room_details']"
						v-if="user_group === '管理员' || (form['hotel_reservation_id'] && $check_field('set','room_details')) || (!form['hotel_reservation_id'] && $check_field('add','room_details')) ">
					</quill-editor>
					<div v-else-if="$check_field('get','room_details')" v-html="form['room_details']"></div>
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
				field: "hotel_reservation_id",
				url_add: "~/api/hotel_reservation/add?",
				url_set: "~/api/hotel_reservation/set?",
				url_get_obj: "~/api/hotel_reservation/get_obj?",
				url_upload: "~/api/hotel_reservation/upload?",

				query: {
					"hotel_reservation_id": 0,
				},

				form: {
					"hotel_name":'', // 酒店名称
					"hotel_address":'', // 酒店地址
					"contact_number":'', // 联系电话
					"room_type":'', // 房间类型
					"bed_type":'', // 床位类型
					"number_of_rooms":0, // 房间数量
					"room_price":0, // 房间价格
					"room_picture":'', // 房间图片
					"room_details":'', // 房间详情
					"hotel_reservation_id": 0, // ID

				},
				disabledObj:{
					"hotel_name_isDisabled": false,
					"hotel_address_isDisabled": false,
					"contact_number_isDisabled": false,
					"room_type_isDisabled": false,
					"bed_type_isDisabled": false,
          "number_of_rooms_isDisabled": false,
          "room_price_isDisabled": false,
					"room_picture_isDisabled": false,
					"room_details_isDisabled": false,
				},
				//床位类型选项列表
				list_bed_type: ['单人房','双人房','大床房'],
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
			 * 获取对象之前
			 * @param {Object} param
			 */
			get_obj_before(param) {
				var form = "";
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
					bl = this.$check_action('/hotel_reservation/table','add');
					console.log(bl ? "你有表格添加权限视作有添加权限" : "你没有表格添加权限");
				}
				if(!bl){
					bl = this.$check_action('/hotel_reservation/table','set');
					console.log(bl ? "你有表格添加权限视作有修改权限" : "你没有表格修改权限");
				}
				if(!bl){
					bl = this.$check_action('/hotel_reservation/view','add');
					console.log(bl ? "你有视图添加权限视作有添加权限" : "你没有视图添加权限");
				}
				if(!bl){
					bl = this.$check_action('/hotel_reservation/view','set');
					console.log(bl ? "你有视图修改权限视作有修改权限" : "你没有视图修改权限");
				}
				if(!bl){
					bl = this.$check_action('/hotel_reservation/view','get');
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
