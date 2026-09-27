<template>
	<div class="diy_edit page_room_reservation" id="room_reservation_edit">
		<div class='warp'>
			<div class='container'>
				<div class='row diy_edit_content_box'>
					<div v-if="$check_field('set','hotel_name') || $check_field('add','hotel_name') || $check_field('get','hotel_name')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>酒店名称:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_hotel_name" v-model="form['hotel_name']" placeholder="请输入酒店名称" v-if="(form['hotel_name'] && $check_field('set','hotel_name')) || (!form['hotel_name'] && $check_field('add','hotel_name'))"  :disabled="disabledObj['hotel_name_isDisabled']"/>
							<span v-else-if="$check_field('get','hotel_name')">{{ form['user_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','hotel_address') || $check_field('add','hotel_address') || $check_field('get','hotel_address')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>酒店地址:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_hotel_address" v-model="form['hotel_address']" placeholder="请输入酒店地址" v-if="(form['hotel_address'] && $check_field('set','hotel_address')) || (!form['hotel_address'] && $check_field('add','hotel_address'))"  :disabled="disabledObj['hotel_address_isDisabled']"/>
							<span v-else-if="$check_field('get','hotel_address')">{{ form['user_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','contact_number') || $check_field('add','contact_number') || $check_field('get','contact_number')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>联系电话:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_contact_number" v-model="form['contact_number']" placeholder="请输入联系电话" v-if="(form['contact_number'] && $check_field('set','contact_number')) || (!form['contact_number'] && $check_field('add','contact_number'))"  :disabled="disabledObj['contact_number_isDisabled']"/>
							<span v-else-if="$check_field('get','contact_number')">{{ form['user_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','room_type') || $check_field('add','room_type') || $check_field('get','room_type')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>房间类型:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_room_type" v-model="form['room_type']" placeholder="请输入房间类型" v-if="(form['room_type'] && $check_field('set','room_type')) || (!form['room_type'] && $check_field('add','room_type'))"  :disabled="disabledObj['room_type_isDisabled']"/>
							<span v-else-if="$check_field('get','room_type')">{{ form['user_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','bed_type') || $check_field('add','bed_type') || $check_field('get','bed_type')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>床位类型:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_bed_type" v-model="form['bed_type']" placeholder="请输入床位类型" v-if="(form['bed_type'] && $check_field('set','bed_type')) || (!form['bed_type'] && $check_field('add','bed_type'))"  :disabled="disabledObj['bed_type_isDisabled']"/>
							<span v-else-if="$check_field('get','bed_type')">{{ form['user_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','number_of_rooms') || $check_field('add','number_of_rooms') || $check_field('get','number_of_rooms')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>房间数量:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_number_of_rooms" v-model="form['number_of_rooms']" placeholder="请输入房间数量" v-if="(form['number_of_rooms'] && $check_field('set','number_of_rooms')) || (!form['number_of_rooms'] && $check_field('add','number_of_rooms'))"  :disabled="disabledObj['number_of_rooms_isDisabled']"/>
							<span v-else-if="$check_field('get','number_of_rooms')">{{ form['user_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','room_price') || $check_field('add','room_price') || $check_field('get','room_price')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>房间价格:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_room_price" v-model="form['room_price']" placeholder="请输入房间价格" v-if="(form['room_price'] && $check_field('set','room_price')) || (!form['room_price'] && $check_field('add','room_price'))"  :disabled="disabledObj['room_price_isDisabled']"/>
							<span v-else-if="$check_field('get','room_price')">{{ form['user_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','room_picture') || $check_field('add','room_picture') || $check_field('get','room_picture')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>房间图片:
							</span>
						</div>
						<!-- 图片 -->
						<input type="file" :disabled="disabledObj['room_picture_isDisabled']" style="display: none;" id="form_img_room_picture" title="room_picture" @change="change_file($event.target.files,'room_picture')"/>
						<!-- 修改权限 -->
						<div class="diy_field diy_img" v-if="form['room_picture'] && $check_field('set','room_picture')">
							<label for="form_img_room_picture">
								<img :src="$fullUrl(form['room_picture'])" />
							</label>
						</div>
						<!-- 添加权限 -->
						<div class="diy_field diy_img" v-else-if="!form['room_picture'] && $check_field('add','room_picture')">
							<label for="form_img_room_picture">
								<div class="btn_add_img">
									<span>+</span>
								</div>
							</label>
						</div>
						<!-- 查询权限 -->
						<div class="diy_field diy_img" v-else-if="$check_field('get','room_picture')">
							<img :src="$fullUrl(form['room_picture'])" />
						</div>
					</div>
					<div v-if="$check_field('set','scheduled_user') || $check_field('add','scheduled_user') || $check_field('get','scheduled_user')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>预定用户:
							</span>
						</div>
						<div class="diy_field diy_down">
							<select id="form_scheduled_user" :disabled="disabledObj['scheduled_user_isDisabled']" v-model="form['scheduled_user']" v-if="(form['scheduled_user'] && $check_field('set','scheduled_user')) || (!form['scheduled_user'] && $check_field('add','scheduled_user'))" >
								<option v-for="o in list_user_scheduled_user" :value="o['user_id']">
									{{o['nickname'] + '-' + o['username']}}
								</option>
							</select>
							<span v-else-if="$check_field('get','scheduled_user')">{{ form['scheduled_user'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','user_name') || $check_field('add','user_name') || $check_field('get','user_name')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>用户姓名:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_user_name" v-model="form['user_name']" placeholder="请输入用户姓名" v-if="(form['user_name'] && $check_field('set','user_name')) || (!form['user_name'] && $check_field('add','user_name'))"  :disabled="disabledObj['user_name_isDisabled']"/>
							<span v-else-if="$check_field('get','user_name')">{{ form['user_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','subscriber_telephone') || $check_field('add','subscriber_telephone') || $check_field('get','subscriber_telephone')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>用户电话:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_subscriber_telephone" v-model="form['subscriber_telephone']" placeholder="请输入用户电话" v-if="(form['subscriber_telephone'] && $check_field('set','subscriber_telephone')) || (!form['subscriber_telephone'] && $check_field('add','subscriber_telephone'))"  :disabled="disabledObj['subscriber_telephone_isDisabled']"/>
							<span v-else-if="$check_field('get','subscriber_telephone')">{{ form['user_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','scheduled_quantity') || $check_field('add','scheduled_quantity') || $check_field('get','scheduled_quantity')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>预定数量:
							</span>
						</div>
						<!-- 数字 -->
						<div class="diy_field diy_number">
							<input type="number" id="form_scheduled_quantity" v-model.number="form['scheduled_quantity']" placeholder="请输入预定数量" v-if="(form['scheduled_quantity'] && $check_field('set','scheduled_quantity')) || (!form['scheduled_quantity'] && $check_field('add','scheduled_quantity'))" :disabled="disabledObj['scheduled_quantity_isDisabled']" />
							<span v-else-if="$check_field('get','scheduled_quantity')">{{ form['user_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','payment_amount') || $check_field('add','payment_amount') || $check_field('get','payment_amount')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>支付金额:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_payment_amount" v-model="form['payment_amount']" placeholder="请输入支付金额" v-if="(form['payment_amount'] && $check_field('set','payment_amount')) || (!form['payment_amount'] && $check_field('add','payment_amount'))"  @focus="set_payment_amount()" :disabled="disabledObj['payment_amount_isDisabled']"/>
							<span v-else-if="$check_field('get','payment_amount')">{{ form['user_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','scheduled_time') || $check_field('add','scheduled_time') || $check_field('get','scheduled_time')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>预定时间:
							</span>
						</div>
						<!-- 日长 -->
						<div class="diy_field diy_datetime">
							<input type="datetime-local" :disabled="disabledObj['scheduled_time_isDisabled']" id="form_scheduled_time" v-model="form['scheduled_time']" placeholder="请输入预定时间" v-if="(form['scheduled_time'] && $check_field('set','scheduled_time')) || (!form['scheduled_time'] && $check_field('add','scheduled_time'))" />
							<span v-else-if="$check_field('get','scheduled_time')">{{ form['user_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','check_in_status') || $check_field('add','check_in_status') || $check_field('get','check_in_status')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>入住状态:
							</span>
						</div>
						<!-- 选项 -->
						<div class="diy_field diy_down">
							<select id="form_check_in_status" v-model="form['check_in_status']" v-if="(form['check_in_status'] && $check_field('set','check_in_status')) || (!form['check_in_status'] && $check_field('add','check_in_status'))" >
								<option v-for="o in list_check_in_status" :value="o">
									{{o}}
								</option>
							</select>
							<span v-else-if="$check_field('get','check_in_status')">{{ form['check_in_status'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','reservation_remarks') || $check_field('add','reservation_remarks') || $check_field('get','reservation_remarks')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>预定备注:
							</span>
						</div>
						<!-- 多文本 -->
						<div class="diy_field diy_desc">
							<textarea id="form_reservation_remarks" v-model="form['reservation_remarks']" v-if="(form['reservation_remarks'] && $check_field('set','reservation_remarks')) || (!form['reservation_remarks'] && $check_field('add','reservation_remarks'))" :disabled="disabledObj['reservation_remarks_isDisabled']" />
							<span v-else-if="$check_field('get','reservation_remarks')">{{ form['user_name'] }}</span>
						</div>
					</div>
				</div>
				<div class="diy_edit_submit_box row">
					<div class="col-12">
						<div class="btn_box">
							<button class="btn_submit" @click="submit()">提交</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</template>

<script>
	import mixin from "@/mixins/page.js";
	export default {
		mixins: [mixin],
		components: {},
		data() {
			return {
				url_get_obj: "~/api/room_reservation/get_obj?",
				url_add: "~/api/room_reservation/add?",
				url_set: "~/api/room_reservation/set?",

				// 登录权限
				oauth: {
					"signIn": true,
					"user_group": []
				},

				// 查询条件
				query: {
					"hotel_name": "",
					"hotel_address": "",
					"contact_number": "",
					"room_type": "",
					"bed_type": "",
					"number_of_rooms": "",
					"room_price": "",
					"room_picture": "",
					"scheduled_user": 0,
					"user_name": "",
					"subscriber_telephone": "",
					"scheduled_quantity": 0,
					"payment_amount": "",
					"scheduled_time": "",
					"check_in_status": "",
					"reservation_remarks": "",
					"room_reservation_id": 0,
				},

				obj: {
					"hotel_name":'', // 酒店名称
					"hotel_address":'', // 酒店地址
					"contact_number":'', // 联系电话
					"room_type":'', // 房间类型
					"bed_type":'', // 床位类型
					"number_of_rooms":'', // 房间数量
					"room_price":'', // 房间价格
					"room_picture":'', // 房间图片
					"scheduled_user": 0, // 预定用户
					"user_name":'', // 用户姓名
					"subscriber_telephone":'', // 用户电话
					"scheduled_quantity":0, // 预定数量
					"payment_amount":'', // 支付金额
					"scheduled_time": new Date().getTime(),
					"check_in_status":'', // 入住状态
					"reservation_remarks":'', // 预定备注
					"room_reservation_id": 0,
				},

				// 表单字段
				form: {
					"hotel_name":'', // 酒店名称
					"hotel_address":'', // 酒店地址
					"contact_number":'', // 联系电话
					"room_type":'', // 房间类型
					"bed_type":'', // 床位类型
					"number_of_rooms":'', // 房间数量
					"room_price":'', // 房间价格
					"room_picture":'', // 房间图片
					"scheduled_user": 0, // 预定用户
					"user_name":'', // 用户姓名
					"subscriber_telephone":'', // 用户电话
					"scheduled_quantity":0, // 预定数量
					"payment_amount":'', // 支付金额
					"scheduled_time": new Date().getTime(),
					"check_in_status":'', // 入住状态
					"reservation_remarks":'', // 预定备注
					"room_reservation_id": 0,
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
					"scheduled_user_isDisabled": false,
					"user_name_isDisabled": false,
					"subscriber_telephone_isDisabled": false,
					"payment_amount_isDisabled": false,
					"scheduled_time_isDisabled": false,
					"check_in_status_isDisabled": false,
					"reservation_remarks_isDisabled": false,
				},
				// 用户列表
				list_user_scheduled_user: [],
				//入住状态选项列表
				list_check_in_status: ['未入住','已入住','已完成'],

				// ID字段
				field: "room_reservation_id",
			}
		},
		methods: {
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
			async get_user_session_scheduled_user(){
				var _this = this;
				var json = await this.$get("~/api/user_group/get_obj?name=普通用户");
				if(json.result && json.result.obj){
					var source_table = json.result.obj.source_table;
					var user_id = _this.$store.state.user.user_id;
					if (user_id){
						var url = "~/api/"+source_table+"/get_obj?"
						this.$get(url, {"user_id":_this.$store.state.user.user_id}, function(res) {
							if (res.result && res.result.obj) {
								var arr = []
								for (let key in res.result.obj) {
									arr.push(key)
								}
								var arrForm = []
								for (let key in _this.form) {
									arrForm.push(key)
								}
								_this.form["scheduled_user"] = user_id
								_this.disabledObj['scheduled_user' + '_isDisabled'] = true
								for (var i=0;i<arr.length;i++){
                  if (arr[i]!=='examine_state' && arr[i]!=='examine_reply') {
                    for (var j = 0; j < arrForm.length; j++) {
                      if (arr[i] === arrForm[j]) {
                        if (arr[i] !== "scheduled_user") {
                          _this.form[arrForm[j]] = res.result.obj[arr[i]]
                          _this.disabledObj[arrForm[j] + '_isDisabled'] = true
                          break;
                        }
                      }
                    }
                  }
								}
							}
						});
					}
				}
				else if(json.error){
					console.error(json.error);
				}
			},
			set_payment_amount(){
				this.form.payment_amount =this.form.room_price * this.form.scheduled_quantity
			},

			/**
			 * 修改文件
			 * @param { Object } files 上传文件对象
			 * @param { String } str 表单的属性名
			 */
			change_file(files, str) {
				var form = new FormData();
				form.append("file", files[0]);
				this.$post("~/api/room_reservation/upload?", form, (res) => {
					if (res.result) {
						this.form[str] = res.result.url;
					} else if (res.error) {
						this.$toast(res.error.message);
					}
				});
			},

			/**
			 * 获取对象后获取缓存表单
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_before(param){
				var form = $.db.get("form");
				// if (form) {
        //   delete(form.examine_state)
        //   delete(form.examine_reply)
        //   this.obj = $.push(this.obj ,form);
				// 	this.form = $.push(this.form ,form);
				// }
				// var arr = []
				// for (let key in form) {
				// 	arr.push(key)
				// }
				// for (var i=0;i<arr.length;i++){
				// 	this.disabledObj[arr[i] + '_isDisabled'] = true
				// }
        if (form) {
          var arr = []
          for (let key in form) {
            arr.push(key)
          }
          var arrForm = []
          for (let key in this.form) {
            arrForm.push(key)
          }
          for (var i=0;i<arr.length;i++){
            if (arr[i]!=='examine_state' && arr[i]!=='examine_reply') {
              for (var j = 0; j < arrForm.length; j++) {
                if (arrForm[j] === arr[i]) {
                  this.form[arrForm[j]] = form[arr[i]]
                  this.obj[arrForm[j]] = form[arr[i]]
                  this.disabledObj[arrForm[j] + '_isDisabled'] = true
                  break;
                }
              }
            }
          }
        }
        if (JSON.stringify(this.form["scheduled_time"]).indexOf("-")===-1) {
          this.form["scheduled_time"] = this.$toTime(parseInt(this.form["scheduled_time"]), "yyyy-MM-ddThh:mm")
        }

        $.db.del("form");
				return param;
			},

			/**
			 * 获取对象后获取缓存表单
			 * @param {Object} json
			 * @param {Object} func
			 */
			get_obj_after(json ,func){
				// var form = $.db.get("form");
				// var obj = Object.assign({} ,form ,this.obj);
				// if (obj) {
        //   delete(obj.examine_state)
        //   delete(obj.examine_reply)
				// 	this.obj = $.push(this.obj ,obj);
				// }
				// if (form) {
        //   delete(form.examine_state)
        //   delete(form.examine_reply)
				// 	this.form = $.push(this.form ,form);
				// }
				if(func){
					func(json);
				}
			},

		},
		created() {
			this.get_user_session_scheduled_user();
			this.get_list_user_scheduled_user();
		},
	}
</script>

<style>
</style>
