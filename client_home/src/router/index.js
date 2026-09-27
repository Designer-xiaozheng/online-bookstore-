import Vue from 'vue';
import VueRouter from 'vue-router';
import index from '../views/index.vue'
import login from '../views/account/login.vue';

Vue.use(VueRouter)

const routes = [
	// 主页ss
	{
		path: '/',
		name: 'index',
		component: index
	},
	// 登录
	{
		path: '/account/login',
		name: 'login',
		component: login
	},
	// 忘记密码
	{
		path: '/account/forgot',
		name: 'forgot',
		component: () => import('../views/account/forgot.vue')
	},
	// 注册账号
	{
		path: '/account/register',
		name: 'register',
		component: () => import('../views/account/register.vue')
	},
	// 媒体图片
	{
		path: '/media/image',
		name: 'media_image',
		component: () => import('../views/media/image.vue')
	},
	// 音乐
	{
		path: '/media/music',
		name: 'media_music',
		component: () => import('../views/media/music.vue')
	},
	// 媒体视频
	{
		path: '/media/video',
		name: 'media_video',
		component: () => import('../views/media/video.vue')
	},
	// 浏览网站
	// 收藏路由
	{
		path: '/user/collect',
		name: 'collect_list',
		component: () => import('../views/user/collect.vue')
	},
	// 公告路由
	{
		path: '/notice/list',
		name: 'notice_list',
		component: () => import('../views/notice/list.vue')
	},
	{
		path: '/notice/details',
		name: 'notice_details',
		component: () => import('../views/notice/details.vue')
	},
	//酒店预定列表路由
	{
		path: '/hotel_reservation/list',
		name: '/hotel_reservation_list',
		component: () => import('../views/hotel_reservation/list.vue')
	},
	//酒店预定详情路由
	{
		path: '/hotel_reservation/details',
		name: '/hotel_reservation_details',
		component: () => import('../views/hotel_reservation/details.vue')
	},
	//房间预定添加路由
	{
		path: '/room_reservation/edit',
		name: '/room_reservation_edit',
		component: () => import('../views/room_reservation/edit.vue')
	},
	//景点购票列表路由
	{
		path: '/scenic_spot_ticket_purchase/list',
		name: '/scenic_spot_ticket_purchase_list',
		component: () => import('../views/scenic_spot_ticket_purchase/list.vue')
	},
	//景点购票详情路由
	{
		path: '/scenic_spot_ticket_purchase/details',
		name: '/scenic_spot_ticket_purchase_details',
		component: () => import('../views/scenic_spot_ticket_purchase/details.vue')
	},
	//购票信息添加路由
	{
		path: '/ticket_information/edit',
		name: '/ticket_information_edit',
		component: () => import('../views/ticket_information/edit.vue')
	},
	//旅游路线列表路由
	{
		path: '/tourist_route/list',
		name: '/tourist_route_list',
		component: () => import('../views/tourist_route/list.vue')
	},
	//旅游路线详情路由
	{
		path: '/tourist_route/details',
		name: '/tourist_route_details',
		component: () => import('../views/tourist_route/details.vue')
	},

	// 用户路由
	{
		path: '/user/index',
		name: 'user_index',
		component: () => import('../views/user/index.vue')
	},
	// 基本信息
	{
		path: '/user/info',
		name: 'user_info',
		component: () => import('../views/user/info.vue')
	},
	// 找回密码
	{
		path: '/user/password',
		name: 'user_password',
		component: () => import('../views/user/password.vue')
	},

	// 搜索
	{
		path: '/search',
		name: 'search',
		component: () => import('../views/search/index.vue')
	},
	// 局部搜索
	{
		path: '/search/details',
		name: 'search_details',
		component: () => import('../views/search/details.vue')
	}
]

const router = new VueRouter({
	mode: 'history',
	base: process.env.BASE_URL,
	routes
})

router.afterEach((to, from, next) => {
	let title = "后疫情时代下的旅游管理-home";
	document.title = title;
	document.logo = "后疫情时代下的旅游管理"
})

export default router
