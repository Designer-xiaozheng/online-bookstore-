<template>
	<div class="diy_edit page_ticket_information" id="ticket_information_edit">
		<div class='warp'>
			<div class='container'>
				<div class='row diy_edit_content_box'>
					<div v-if="$check_field('set','name_of_scenic_spot') || $check_field('add','name_of_scenic_spot') || $check_field('get','name_of_scenic_spot')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>景点名称:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_name_of_scenic_spot" v-model="form['name_of_scenic_spot']" placeholder="请输入景点名称" v-if="(form['name_of_scenic_spot'] && $check_field('set','name_of_scenic_spot')) || (!form['name_of_scenic_spot'] && $check_field('add','name_of_scenic_spot'))"  :disabled="disabledObj['name_of_scenic_spot_isDisabled']"/>
							<span v-else-if="$check_field('get','name_of_scenic_spot')">{{ form['user_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','scenic_spot_type') || $check_field('add','scenic_spot_type') || $check_field('get','scenic_spot_type')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>景点类型:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_scenic_spot_type" v-model="form['scenic_spot_type']" placeholder="请输入景点类型" v-if="(form['scenic_spot_type'] && $check_field('set','scenic_spot_type')) || (!form['scenic_spot_type'] && $check_field('add','scenic_spot_type'))"  :disabled="disabledObj['scenic_spot_type_isDisabled']"/>
							<span v-else-if="$check_field('get','scenic_spot_type')">{{ form['user_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','scenic_spot_address') || $check_field('add','scenic_spot_address') || $check_field('get','scenic_spot_address')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>景点地址:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_scenic_spot_address" v-model="form['scenic_spot_address']" placeholder="请输入景点地址" v-if="(form['scenic_spot_address'] && $check_field('set','scenic_spot_address')) || (!form['scenic_spot_address'] && $check_field('add','scenic_spot_address'))"  :disabled="disabledObj['scenic_spot_address_isDisabled']"/>
							<span v-else-if="$check_field('get','scenic_spot_address')">{{ form['user_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','working_personnel') || $check_field('add','working_personnel') || $check_field('get','working_personnel')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>工作人员:
							</span>
						</div>
						<div class="diy_field diy_down">
							<select id="form_working_personnel" :disabled="disabledObj['working_personnel_isDisabled']" v-model="form['working_personnel']" v-if="(form['working_personnel'] && $check_field('set','working_personnel')) || (!form['working_personnel'] && $check_field('add','working_personnel'))" >
								<option v-for="o in list_user_working_personnel" :value="o['user_id']">
									{{o['nickname'] + '-' + o['username']}}
								</option>
							</select>
							<span v-else-if="$check_field('get','working_personnel')">{{ form['working_personnel'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','ticket_price') || $check_field('add','ticket_price') || $check_field('get','ticket_price')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>门票价格:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_ticket_price" v-model="form['ticket_price']" placeholder="请输入门票价格" v-if="(form['ticket_price'] && $check_field('set','ticket_price')) || (!form['ticket_price'] && $check_field('add','ticket_price'))"  :disabled="disabledObj['ticket_price_isDisabled']"/>
							<span v-else-if="$check_field('get','ticket_price')">{{ form['user_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','opening_hours') || $check_field('add','opening_hours') || $check_field('get','opening_hours')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>开放时间:
							</span>
						</div>
						<!-- 文本 -->
						<div class="diy_field diy_text">
							<input type="text" id="form_opening_hours" v-model="form['opening_hours']" placeholder="请输入开放时间" v-if="(form['opening_hours'] && $check_field('set','opening_hours')) || (!form['opening_hours'] && $check_field('add','opening_hours'))"  :disabled="disabledObj['opening_hours_isDisabled']"/>
							<span v-else-if="$check_field('get','opening_hours')">{{ form['user_name'] }}</span>
						</div>
					</div>
					<div v-if="$check_field('set','scenic_spot_pictures') || $check_field('add','scenic_spot_pictures') || $check_field('get','scenic_spot_pictures')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>景点图片:
							</span>
						</div>
						<!-- 图片 -->
						<input type="file" :disabled="disabledObj['scenic_spot_pictures_isDisabled']" style="display: none;" id="form_img_scenic_spot_pictures" title="scenic_spot_pictures" @change="change_file($event.target.files,'scenic_spot_pictures')"/>
						<!-- 修改权限 -->
						<div class="diy_field diy_img" v-if="form['scenic_spot_pictures'] && $check_field('set','scenic_spot_pictures')">
							<label for="form_img_scenic_spot_pictures">
								<img :src="$fullUrl(form['scenic_spot_pictures'])" />
							</label>
						</div>
						<!-- 添加权限 -->
						<div class="diy_field diy_img" v-else-if="!form['scenic_spot_pictures'] && $check_field('add','scenic_spot_pictures')">
							<label for="form_img_scenic_spot_pictures">
								<div class="btn_add_img">
									<span>+</span>
								</div>
							</label>
						</div>
						<!-- 查询权限 -->
						<div class="diy_field diy_img" v-else-if="$check_field('get','scenic_spot_pictures')">
							<img :src="$fullUrl(form['scenic_spot_pictures'])" />
						</div>
					</div>
					<div v-if="$check_field('set','ticket_user') || $check_field('add','ticket_user') || $check_field('get','ticket_user')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>购票用户:
							</span>
						</div>
						<div class="diy_field diy_down">
							<select id="form_ticket_user" :disabled="disabledObj['ticket_user_isDisabled']" v-model="form['ticket_user']" v-if="(form['ticket_user'] && $check_field('set','ticket_user')) || (!form['ticket_user'] && $check_field('add','ticket_user'))" >
								<option v-for="o in list_user_ticket_user" :value="o['user_id']">
									{{o['nickname'] + '-' + o['username']}}
								</option>
							</select>
							<span v-else-if="$check_field('get','ticket_user')">{{ form['ticket_user'] }}</span>
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
					<div v-if="$check_field('set','ticket_quantity') || $check_field('add','ticket_quantity') || $check_field('get','ticket_quantity')" class="form-item col-12 col-md-6">
						<div class="diy_title">
							<span>购票数量:
							</span>
						</div>
						<!-- 数字 -->
						<div class="diy_field diy_number">
							<input type="number" id="form_ticket_quantity" v-model.number="form['ticket_quantity']" placeholder="请输入购票数量" v-if="(form['ticket_quantity'] && $check_field('set','ticket_quantity')) || (!form['ticket_quantity'] && $check_field('add','ticket_quantity'))" :disabled="disabledObj['ticket_quantity_isDisabled']" />
							<span v-else-if="$check_field('get','ticket_quantity')">{{ form['user_name'] }}</span>
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
				url_get_obj: "~/api/ticket_information/get_obj?",
				url_add: "~/api/ticket_information/add?",
				url_set: "~/api/ticket_information/set?",

				// 登录权限
				oauth: {
					"signIn": true,
					"user_group": []
				},

				// 查询条件
				query: {
					"name_of_scenic_spot": "",
					"scenic_spot_type": "",
					"scenic_spot_address": "",
					"working_personnel": 0,
					"ticket_price": "",
					"opening_hours": "",
					"scenic_spot_pictures": "",
					"ticket_user": 0,
					"user_name": "",
					"subscriber_telephone": "",
					"ticket_quantity": 0,
					"payment_amount": "",
					"ticket_information_id": 0,
				},

				obj: {
					"name_of_scenic_spot":'', // 景点名称
					"scenic_spot_type":'', // 景点类型
					"scenic_spot_address":'', // 景点地址
					"working_personnel": 0, // 工作人员
					"ticket_price":'', // 门票价格
					"opening_hours":'', // 开放时间
					"scenic_spot_pictures":'', // 景点图片
					"ticket_user": 0, // 购票用户
					"user_name":'', // 用户姓名
					"subscriber_telephone":'', // 用户电话
					"ticket_quantity":0, // 购票数量
					"payment_amount":'', // 支付金额
					"ticket_information_id": 0,
				},

				// 表单字段
				form: {
					"name_of_scenic_spot":'', // 景点名称
					"scenic_spot_type":'', // 景点类型
					"scenic_spot_address":'', // 景点地址
					"working_personnel": 0, // 工作人员
					"ticket_price":'', // 门票价格
					"opening_hours":'', // 开放时间
					"scenic_spot_pictures":'', // 景点图片
					"ticket_user": 0, // 购票用户
					"user_name":'', // 用户姓名
					"subscriber_telephone":'', // 用户电话
					"ticket_quantity":0, // 购票数量
					"payment_amount":'', // 支付金额
					"ticket_information_id": 0,
				},
				disabledObj:{
					"name_of_scenic_spot_isDisabled": false,
					"scenic_spot_type_isDisabled": false,
					"scenic_spot_address_isDisabled": false,
					"working_personnel_isDisabled": false,
					"ticket_price_isDisabled": false,
					"opening_hours_isDisabled": false,
					"scenic_spot_pictures_isDisabled": false,
					"ticket_user_isDisabled": false,
					"user_name_isDisabled": false,
					"subscriber_telephone_isDisabled": false,
					"payment_amount_isDisabled": false,
				},
				// 用户列表
				list_user_working_personnel: [],
				// 用户列表
				list_user_ticket_user: [],

				// ID字段
				field: "ticket_information_id",
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
			async get_user_session_ticket_user(){
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
								_this.form["ticket_user"] = user_id
								_this.disabledObj['ticket_user' + '_isDisabled'] = true
								for (var i=0;i<arr.length;i++){
                  if (arr[i]!=='examine_state' && arr[i]!=='examine_reply') {
                    for (var j = 0; j < arrForm.length; j++) {
                      if (arr[i] === arrForm[j]) {
                        if (arr[i] !== "ticket_user") {
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
				this.form.payment_amount =this.form.ticket_price * this.form.ticket_quantity
			},

			/**
			 * 修改文件
			 * @param { Object } files 上传文件对象
			 * @param { String } str 表单的属性名
			 */
			change_file(files, str) {
				var form = new FormData();
				form.append("file", files[0]);
				this.$post("~/api/ticket_information/upload?", form, (res) => {
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
			this.get_list_user_working_personnel();
			this.get_user_session_ticket_user();
			this.get_list_user_ticket_user();
		},
	}
</script>

<style>
</style>
