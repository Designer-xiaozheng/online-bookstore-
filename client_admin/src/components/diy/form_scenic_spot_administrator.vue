<template>
	<div>
		<el-form-item v-if="$check_register_field('add','name_of_scenic_spot','/scenic_spot_administrator/view')" label="景点名称" prop="name_of_scenic_spot">
		<el-input id="name_of_scenic_spot" v-model="form['name_of_scenic_spot']" placeholder="请输入景点名称"></el-input>
		</el-form-item>
		<el-form-item v-if="$check_register_field('add','scenic_spot_address','/scenic_spot_administrator/view')" label="景点地址" prop="scenic_spot_address">
		<el-input id="scenic_spot_address" v-model="form['scenic_spot_address']" placeholder="请输入景点地址"></el-input>
		</el-form-item>
		<el-form-item v-if="$check_register_field('add','applicant','/scenic_spot_administrator/view')" label="申请人" prop="applicant">
		<el-input id="applicant" v-model="form['applicant']" placeholder="请输入申请人"></el-input>
		</el-form-item>
		<el-form-item v-if="$check_register_field('add','relevant_certificates','/scenic_spot_administrator/view')" label="相关证件" prop="relevant_certificates">
		<el-upload id="relevant_certificates" class="avatar-uploader" drag
			accept="image/gif, image/jpeg, image/png, image/jpg" action="" :http-request="uploadimg"
			:show-file-list="false" >
			<img v-if="form['relevant_certificates']" :src="$fullUrl(form['relevant_certificates'])" class="avatar">
			<i v-else class="el-icon-plus avatar-uploader-icon"></i>
		</el-upload>
		</el-form-item>

	</div>
</template>

<script>
	import mixin from "@/mixins/component.js";

	export default {
		mixins: [mixin],
		props:{

			form:{
				type: Object,
				default: function(){
					return {
						"name_of_scenic_spot":'',
						"scenic_spot_address":'',
						"applicant":'',
						"relevant_certificates":'',
					}
				}
			},

		},
		data() {
			return {
				field: "scenic_spot_administrator_id",
				url_add: "~/api/scenic_spot_administrator/add?",
				url_set: "~/api/scenic_spot_administrator/set?",
				url_upload: "~/api/scenic_spot_administrator/upload?",

				rules: {
					"name_of_scenic_spot": [ ],
					"scenic_spot_address": [ ],
					"applicant": [ ],
					"relevant_certificates": [ ],
				}

			}
		},
		methods: {
			/**
			 * 上传相关证件
			 * @param {Object} param 图片参数
			 */
			uploadimg(param) {
				this.uploadFile(param.file, "relevant_certificates");
			},

		},
		created() {
		}
	}
</script>
