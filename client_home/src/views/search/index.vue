<template>
  <div class="page_search">
	<div class="warp">
	  <div class="container">
		<div class="row">
		  <div class="col-12">
			<div class="card_result_search">
			  <div class="title">搜索结果</div>
			  <list_result_search
				v-if="$check_action('/ordinary_users/list', 'get')"
				:list="result_ordinary_users_user_name"
				title="普通用户用户姓名"
				source_table="ordinary_users"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/scenic_spot_administrator/list', 'get')"
				:list="result_scenic_spot_administrator_applicant"
				title="景点管理员申请人"
				source_table="scenic_spot_administrator"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/hotel_reservation/list', 'get')"
				:list="result_hotel_reservation_hotel_name"
				title="酒店预定酒店名称"
				source_table="hotel_reservation"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/hotel_reservation/list', 'get')"
				:list="result_hotel_reservation_room_type"
				title="酒店预定房间类型"
				source_table="hotel_reservation"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/hotel_reservation/list', 'get')"
				:list="result_hotel_reservation_bed_type"
				title="酒店预定床位类型"
				source_table="hotel_reservation"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/room_reservation/list', 'get')"
				:list="result_room_reservation_hotel_name"
				title="房间预定酒店名称"
				source_table="room_reservation"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/room_reservation/list', 'get')"
				:list="result_room_reservation_room_type"
				title="房间预定房间类型"
				source_table="room_reservation"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/room_reservation/list', 'get')"
				:list="result_room_reservation_bed_type"
				title="房间预定床位类型"
				source_table="room_reservation"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/room_cancellation/list', 'get')"
				:list="result_room_cancellation_hotel_name"
				title="房间取消酒店名称"
				source_table="room_cancellation"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/room_cancellation/list', 'get')"
				:list="result_room_cancellation_room_type"
				title="房间取消房间类型"
				source_table="room_cancellation"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/room_cancellation/list', 'get')"
				:list="result_room_cancellation_bed_type"
				title="房间取消床位类型"
				source_table="room_cancellation"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/scenic_spot_ticket_purchase/list', 'get')"
				:list="result_scenic_spot_ticket_purchase_name_of_scenic_spot"
				title="景点购票景点名称"
				source_table="scenic_spot_ticket_purchase"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/scenic_spot_ticket_purchase/list', 'get')"
				:list="result_scenic_spot_ticket_purchase_scenic_spot_type"
				title="景点购票景点类型"
				source_table="scenic_spot_ticket_purchase"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/ticket_information/list', 'get')"
				:list="result_ticket_information_name_of_scenic_spot"
				title="购票信息景点名称"
				source_table="ticket_information"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/ticket_information/list', 'get')"
				:list="result_ticket_information_scenic_spot_type"
				title="购票信息景点类型"
				source_table="ticket_information"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/ticket_cancellation/list', 'get')"
				:list="result_ticket_cancellation_name_of_scenic_spot"
				title="购票取消景点名称"
				source_table="ticket_cancellation"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/ticket_cancellation/list', 'get')"
				:list="result_ticket_cancellation_scenic_spot_type"
				title="购票取消景点类型"
				source_table="ticket_cancellation"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/tourist_route/list', 'get')"
				:list="result_tourist_route_route_name"
				title="旅游路线路线名称"
				source_table="tourist_route"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/tourist_route/list', 'get')"
				:list="result_tourist_route_route_type"
				title="旅游路线路线类型"
				source_table="tourist_route"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/ticket_check_information/list', 'get')"
				:list="result_ticket_check_information_name_of_scenic_spot"
				title="验票信息景点名称"
				source_table="ticket_check_information"
			  ></list_result_search>
			  <list_result_search
				v-if="$check_action('/ticket_check_information/list', 'get')"
				:list="result_ticket_check_information_scenic_spot_type"
				title="验票信息景点类型"
				source_table="ticket_check_information"
			  ></list_result_search>
			</div>
		  </div>
		</div>
	  </div>
	</div>
  </div>
</template>

<script>
import mixin from "../../mixins/page.js";
import list_result_search from "../../components/diy/list_result_search.vue";

export default {
  mixins: [mixin],
  data() {
	return {
	  "query": {
		word: "",
	  },
			"result_ordinary_users_user_name":[],
			"result_scenic_spot_administrator_applicant":[],
			"result_hotel_reservation_hotel_name":[],
			"result_hotel_reservation_room_type":[],
			"result_hotel_reservation_bed_type":[],
			"result_room_reservation_hotel_name":[],
			"result_room_reservation_room_type":[],
			"result_room_reservation_bed_type":[],
			"result_room_cancellation_hotel_name":[],
			"result_room_cancellation_room_type":[],
			"result_room_cancellation_bed_type":[],
			"result_scenic_spot_ticket_purchase_name_of_scenic_spot":[],
			"result_scenic_spot_ticket_purchase_scenic_spot_type":[],
			"result_ticket_information_name_of_scenic_spot":[],
			"result_ticket_information_scenic_spot_type":[],
			"result_ticket_cancellation_name_of_scenic_spot":[],
			"result_ticket_cancellation_scenic_spot_type":[],
			"result_tourist_route_route_name":[],
			"result_tourist_route_route_type":[],
			"result_ticket_check_information_name_of_scenic_spot":[],
			"result_ticket_check_information_scenic_spot_type":[],
	};
  },
  methods: {
	/**
	 * 获取user_name
	 */
	get_ordinary_users_user_name(){
		this.$get("~/api/ordinary_users/get_list?like=0", { page: 1, size: 10, "user_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_ordinary_users_user_name = json.result.list;
			result_ordinary_users_user_name.map(o => o.title = o['user_name'])
	  			this.result_ordinary_users_user_name = result_ordinary_users_user_name
		 	}
		});
	},
	/**
	 * 获取applicant
	 */
	get_scenic_spot_administrator_applicant(){
		this.$get("~/api/scenic_spot_administrator/get_list?like=0", { page: 1, size: 10, "applicant": this.query.word }, (json) => {
		  if (json.result) {
			var result_scenic_spot_administrator_applicant = json.result.list;
			result_scenic_spot_administrator_applicant.map(o => o.title = o['applicant'])
	  			this.result_scenic_spot_administrator_applicant = result_scenic_spot_administrator_applicant
		 	}
		});
	},
	/**
	 * 获取hotel_name
	 */
	get_hotel_reservation_hotel_name(){
		this.$get("~/api/hotel_reservation/get_list?like=0", { page: 1, size: 10, "hotel_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_hotel_reservation_hotel_name = json.result.list;
			result_hotel_reservation_hotel_name.map(o => o.title = o['hotel_name'])
	  			this.result_hotel_reservation_hotel_name = result_hotel_reservation_hotel_name
		 	}
		});
	},
	/**
	 * 获取room_type
	 */
	get_hotel_reservation_room_type(){
		this.$get("~/api/hotel_reservation/get_list?like=0", { page: 1, size: 10, "room_type": this.query.word }, (json) => {
		  if (json.result) {
			var result_hotel_reservation_room_type = json.result.list;
			result_hotel_reservation_room_type.map(o => o.title = o['room_type'])
	  			this.result_hotel_reservation_room_type = result_hotel_reservation_room_type
		 	}
		});
	},
	/**
	 * 获取bed_type
	 */
	get_hotel_reservation_bed_type(){
		this.$get("~/api/hotel_reservation/get_list?like=0", { page: 1, size: 10, "bed_type": this.query.word }, (json) => {
		  if (json.result) {
			var result_hotel_reservation_bed_type = json.result.list;
			result_hotel_reservation_bed_type.map(o => o.title = o['bed_type'])
	  			this.result_hotel_reservation_bed_type = result_hotel_reservation_bed_type
		 	}
		});
	},
	/**
	 * 获取hotel_name
	 */
	get_room_reservation_hotel_name(){
		this.$get("~/api/room_reservation/get_list?like=0", { page: 1, size: 10, "hotel_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_room_reservation_hotel_name = json.result.list;
			result_room_reservation_hotel_name.map(o => o.title = o['hotel_name'])
	  			this.result_room_reservation_hotel_name = result_room_reservation_hotel_name
		 	}
		});
	},
	/**
	 * 获取room_type
	 */
	get_room_reservation_room_type(){
		this.$get("~/api/room_reservation/get_list?like=0", { page: 1, size: 10, "room_type": this.query.word }, (json) => {
		  if (json.result) {
			var result_room_reservation_room_type = json.result.list;
			result_room_reservation_room_type.map(o => o.title = o['room_type'])
	  			this.result_room_reservation_room_type = result_room_reservation_room_type
		 	}
		});
	},
	/**
	 * 获取bed_type
	 */
	get_room_reservation_bed_type(){
		this.$get("~/api/room_reservation/get_list?like=0", { page: 1, size: 10, "bed_type": this.query.word }, (json) => {
		  if (json.result) {
			var result_room_reservation_bed_type = json.result.list;
			result_room_reservation_bed_type.map(o => o.title = o['bed_type'])
	  			this.result_room_reservation_bed_type = result_room_reservation_bed_type
		 	}
		});
	},
	/**
	 * 获取hotel_name
	 */
	get_room_cancellation_hotel_name(){
		this.$get("~/api/room_cancellation/get_list?like=0", { page: 1, size: 10, "hotel_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_room_cancellation_hotel_name = json.result.list;
			result_room_cancellation_hotel_name.map(o => o.title = o['hotel_name'])
	  			this.result_room_cancellation_hotel_name = result_room_cancellation_hotel_name
		 	}
		});
	},
	/**
	 * 获取room_type
	 */
	get_room_cancellation_room_type(){
		this.$get("~/api/room_cancellation/get_list?like=0", { page: 1, size: 10, "room_type": this.query.word }, (json) => {
		  if (json.result) {
			var result_room_cancellation_room_type = json.result.list;
			result_room_cancellation_room_type.map(o => o.title = o['room_type'])
	  			this.result_room_cancellation_room_type = result_room_cancellation_room_type
		 	}
		});
	},
	/**
	 * 获取bed_type
	 */
	get_room_cancellation_bed_type(){
		this.$get("~/api/room_cancellation/get_list?like=0", { page: 1, size: 10, "bed_type": this.query.word }, (json) => {
		  if (json.result) {
			var result_room_cancellation_bed_type = json.result.list;
			result_room_cancellation_bed_type.map(o => o.title = o['bed_type'])
	  			this.result_room_cancellation_bed_type = result_room_cancellation_bed_type
		 	}
		});
	},
	/**
	 * 获取name_of_scenic_spot
	 */
	get_scenic_spot_ticket_purchase_name_of_scenic_spot(){
		this.$get("~/api/scenic_spot_ticket_purchase/get_list?like=0", { page: 1, size: 10, "name_of_scenic_spot": this.query.word }, (json) => {
		  if (json.result) {
			var result_scenic_spot_ticket_purchase_name_of_scenic_spot = json.result.list;
			result_scenic_spot_ticket_purchase_name_of_scenic_spot.map(o => o.title = o['name_of_scenic_spot'])
	  			this.result_scenic_spot_ticket_purchase_name_of_scenic_spot = result_scenic_spot_ticket_purchase_name_of_scenic_spot
		 	}
		});
	},
	/**
	 * 获取scenic_spot_type
	 */
	get_scenic_spot_ticket_purchase_scenic_spot_type(){
		this.$get("~/api/scenic_spot_ticket_purchase/get_list?like=0", { page: 1, size: 10, "scenic_spot_type": this.query.word }, (json) => {
		  if (json.result) {
			var result_scenic_spot_ticket_purchase_scenic_spot_type = json.result.list;
			result_scenic_spot_ticket_purchase_scenic_spot_type.map(o => o.title = o['scenic_spot_type'])
	  			this.result_scenic_spot_ticket_purchase_scenic_spot_type = result_scenic_spot_ticket_purchase_scenic_spot_type
		 	}
		});
	},
	/**
	 * 获取name_of_scenic_spot
	 */
	get_ticket_information_name_of_scenic_spot(){
		this.$get("~/api/ticket_information/get_list?like=0", { page: 1, size: 10, "name_of_scenic_spot": this.query.word }, (json) => {
		  if (json.result) {
			var result_ticket_information_name_of_scenic_spot = json.result.list;
			result_ticket_information_name_of_scenic_spot.map(o => o.title = o['name_of_scenic_spot'])
	  			this.result_ticket_information_name_of_scenic_spot = result_ticket_information_name_of_scenic_spot
		 	}
		});
	},
	/**
	 * 获取scenic_spot_type
	 */
	get_ticket_information_scenic_spot_type(){
		this.$get("~/api/ticket_information/get_list?like=0", { page: 1, size: 10, "scenic_spot_type": this.query.word }, (json) => {
		  if (json.result) {
			var result_ticket_information_scenic_spot_type = json.result.list;
			result_ticket_information_scenic_spot_type.map(o => o.title = o['scenic_spot_type'])
	  			this.result_ticket_information_scenic_spot_type = result_ticket_information_scenic_spot_type
		 	}
		});
	},
	/**
	 * 获取name_of_scenic_spot
	 */
	get_ticket_cancellation_name_of_scenic_spot(){
		this.$get("~/api/ticket_cancellation/get_list?like=0", { page: 1, size: 10, "name_of_scenic_spot": this.query.word }, (json) => {
		  if (json.result) {
			var result_ticket_cancellation_name_of_scenic_spot = json.result.list;
			result_ticket_cancellation_name_of_scenic_spot.map(o => o.title = o['name_of_scenic_spot'])
	  			this.result_ticket_cancellation_name_of_scenic_spot = result_ticket_cancellation_name_of_scenic_spot
		 	}
		});
	},
	/**
	 * 获取scenic_spot_type
	 */
	get_ticket_cancellation_scenic_spot_type(){
		this.$get("~/api/ticket_cancellation/get_list?like=0", { page: 1, size: 10, "scenic_spot_type": this.query.word }, (json) => {
		  if (json.result) {
			var result_ticket_cancellation_scenic_spot_type = json.result.list;
			result_ticket_cancellation_scenic_spot_type.map(o => o.title = o['scenic_spot_type'])
	  			this.result_ticket_cancellation_scenic_spot_type = result_ticket_cancellation_scenic_spot_type
		 	}
		});
	},
	/**
	 * 获取route_name
	 */
	get_tourist_route_route_name(){
		this.$get("~/api/tourist_route/get_list?like=0", { page: 1, size: 10, "route_name": this.query.word }, (json) => {
		  if (json.result) {
			var result_tourist_route_route_name = json.result.list;
			result_tourist_route_route_name.map(o => o.title = o['route_name'])
	  			this.result_tourist_route_route_name = result_tourist_route_route_name
		 	}
		});
	},
	/**
	 * 获取route_type
	 */
	get_tourist_route_route_type(){
		this.$get("~/api/tourist_route/get_list?like=0", { page: 1, size: 10, "route_type": this.query.word }, (json) => {
		  if (json.result) {
			var result_tourist_route_route_type = json.result.list;
			result_tourist_route_route_type.map(o => o.title = o['route_type'])
	  			this.result_tourist_route_route_type = result_tourist_route_route_type
		 	}
		});
	},
	/**
	 * 获取name_of_scenic_spot
	 */
	get_ticket_check_information_name_of_scenic_spot(){
		this.$get("~/api/ticket_check_information/get_list?like=0", { page: 1, size: 10, "name_of_scenic_spot": this.query.word }, (json) => {
		  if (json.result) {
			var result_ticket_check_information_name_of_scenic_spot = json.result.list;
			result_ticket_check_information_name_of_scenic_spot.map(o => o.title = o['name_of_scenic_spot'])
	  			this.result_ticket_check_information_name_of_scenic_spot = result_ticket_check_information_name_of_scenic_spot
		 	}
		});
	},
	/**
	 * 获取scenic_spot_type
	 */
	get_ticket_check_information_scenic_spot_type(){
		this.$get("~/api/ticket_check_information/get_list?like=0", { page: 1, size: 10, "scenic_spot_type": this.query.word }, (json) => {
		  if (json.result) {
			var result_ticket_check_information_scenic_spot_type = json.result.list;
			result_ticket_check_information_scenic_spot_type.map(o => o.title = o['scenic_spot_type'])
	  			this.result_ticket_check_information_scenic_spot_type = result_ticket_check_information_scenic_spot_type
		 	}
		});
	},

  },
  components: { list_result_search },
	created(){
    this.query.word = this.$route.query.word || "";
  },
  mounted() {
		this.get_ordinary_users_user_name();
		this.get_scenic_spot_administrator_applicant();
		this.get_hotel_reservation_hotel_name();
		this.get_hotel_reservation_room_type();
		this.get_hotel_reservation_bed_type();
		this.get_room_reservation_hotel_name();
		this.get_room_reservation_room_type();
		this.get_room_reservation_bed_type();
		this.get_room_cancellation_hotel_name();
		this.get_room_cancellation_room_type();
		this.get_room_cancellation_bed_type();
		this.get_scenic_spot_ticket_purchase_name_of_scenic_spot();
		this.get_scenic_spot_ticket_purchase_scenic_spot_type();
		this.get_ticket_information_name_of_scenic_spot();
		this.get_ticket_information_scenic_spot_type();
		this.get_ticket_cancellation_name_of_scenic_spot();
		this.get_ticket_cancellation_scenic_spot_type();
		this.get_tourist_route_route_name();
		this.get_tourist_route_route_type();
		this.get_ticket_check_information_name_of_scenic_spot();
		this.get_ticket_check_information_scenic_spot_type();
  },
  watch: {
	$route() {
	  $.push(this.query, this.$route.query);
	  this.get_ordinary_users_user_name();
	  this.get_scenic_spot_administrator_applicant();
	  this.get_hotel_reservation_hotel_name();
	  this.get_hotel_reservation_room_type();
	  this.get_hotel_reservation_bed_type();
	  this.get_room_reservation_hotel_name();
	  this.get_room_reservation_room_type();
	  this.get_room_reservation_bed_type();
	  this.get_room_cancellation_hotel_name();
	  this.get_room_cancellation_room_type();
	  this.get_room_cancellation_bed_type();
	  this.get_scenic_spot_ticket_purchase_name_of_scenic_spot();
	  this.get_scenic_spot_ticket_purchase_scenic_spot_type();
	  this.get_ticket_information_name_of_scenic_spot();
	  this.get_ticket_information_scenic_spot_type();
	  this.get_ticket_cancellation_name_of_scenic_spot();
	  this.get_ticket_cancellation_scenic_spot_type();
	  this.get_tourist_route_route_name();
	  this.get_tourist_route_route_type();
	  this.get_ticket_check_information_name_of_scenic_spot();
	  this.get_ticket_check_information_scenic_spot_type();
	},
  },
};
</script>

<style scoped>
.card_search {
  text-align: center;
}
.card_result_search>.title {
  text-align: center;
  padding: 10px 0;
}
</style>
