import Vue from 'vue';
import VueRouter from 'vue-router';
import index from '../views/index.vue';
import login from '../views/login.vue';
import forgot from '../views/forgot.vue';
import register from '../views/register.vue';
Vue.use(VueRouter)

const routes = [
	// 主页
	{
		path: '/',
		name: 'index',
		component: index,
		meta: {
			index: 0,
			title: '首页'
		}
	},

	// 登录
	{
		path: '/login',
		name: 'login',
		component: login,
		meta: {
			index: 0,
			title: '登录'
		}
	},
	// 注册
	{
		path: '/register',
		name: 'register',
		component: register,
		meta: {
			index: 0,
			title: '注册'
		}
	},

	// 忘记密码
	{
		path: '/forgot',
		name: "forgot",
		component: forgot,
		meta: {
			index: 0,
			title: '忘记密码'
		}
	},

	// 修改密码
	{
		path: '/user/password',
		name: "password",
		component: () => import("../views/user/password.vue"),
		meta: {
			index: 0,
			title: '修改密码'
		}
	},

	// 视频播放页
	{
		path: "/media/video",
		name: "video",
		component: () => import('../views/media/video.vue'),
		meta: {
			index: 0,
			title: "视频"
		}
	},

	// 音频播放页
	{
		path: "/media/audio",
		name: "audio",
		component: () => import('../views/media/audio.vue'),
		meta: {
			index: 0,
			title: "音频"
		}
	},
	// 权限路由
	{
		path: '/auth/table',
		name: 'auth_table',
		component: () => import('../views/nav/table.vue'),
		meta: {
			index: 0,
			title: '权限列表'
		}
	},
	{
		path: '/auth/view',
		name: 'auth_view',
		component: () => import('../views/nav/view.vue'),
		meta: {
			index: 0,
			title: '权限详情'
		}
	},

	// 友情链接路由
	// {
	// 	path: '/link/table',
	// 	name: 'link_table',
	// 	component: () => import('../views/link/table.vue'),
	// 	meta: {
	// 		index: 0,
	// 		title: '链接列表'
	// 	}
	// },
	// {
	// 	path: '/link/view',
	// 	name: 'link_view',
	// 	component: () => import('../views/link/view.vue'),
	// 	meta: {
	// 		index: 0,
	// 		title: '链接详情'
	// 	}
	// },

	// 轮播图路由
	{
		path: '/slides/table',
		name: 'slides_table',
		component: () => import('../views/slides/table.vue'),
		meta: {
			index: 0,
			title: '轮播图列表'
		}
	},
	{
		path: '/slides/view',
		name: 'slides_view',
		component: () => import('../views/slides/view.vue'),
		meta: {
			index: 0,
			title: '轮播图详情'
		}
	},

	// 广告路由
	// {
	// 	path: '/ad/table',
	// 	name: 'ad_table',
	// 	component: () => import('../views/ad/table.vue'),
	// 	meta: {
	// 		index: 0,
	// 		title: '广告列表'
	// 	}
	// },
	// {
	// 	path: '/ad/view',
	// 	name: 'ad_view',
	// 	component: () => import('../views/ad/view.vue'),
	// 	meta: {
	// 		index: 0,
	// 		title: '广告详情'
	// 	}
	// },
	// 公告路由
	{
		path: '/notice/table',
		name: 'notice_table',
		component: () => import('../views/notice/table.vue'),
		meta: {
			index: 0,
			title: '公告列表'
		}
	},
	{
		path: '/notice/view',
		name: 'notice_view',
		component: () => import('../views/notice/view.vue'),
		meta: {
			index: 0,
			title: '公告详情'
		}
	},
	// 评论路由
	{
		path: '/comment/table',
		name: 'comment_table',
		component: () => import('../views/comment/table.vue'),
		meta: {
			index: 0,
			title: '评论列表'
		}
	},
	{
		path: '/comment/view',
		name: 'comment_view',
		component: () => import('../views/comment/view.vue'),
		meta: {
			index: 0,
			title: '评论详情'
		}
	},
	// 普通用户路由
	{
		path: '/ordinary_users/table',
		name: 'ordinary_users_table',
		component: () => import('../views/ordinary_users/table.vue')
	},
	{
		path: '/ordinary_users/view',
		name: 'ordinary_users_view',
		component: () => import('../views/ordinary_users/view.vue')
	},
	// 景点管理员路由
	{
		path: '/scenic_spot_administrator/table',
		name: 'scenic_spot_administrator_table',
		component: () => import('../views/scenic_spot_administrator/table.vue')
	},
	{
		path: '/scenic_spot_administrator/view',
		name: 'scenic_spot_administrator_view',
		component: () => import('../views/scenic_spot_administrator/view.vue')
	},
	// 酒店预定路由
	{
		path: '/hotel_reservation/table',
		name: 'hotel_reservation_table',
		component: () => import('../views/hotel_reservation/table.vue')
	},
	{
		path: '/hotel_reservation/view',
		name: 'hotel_reservation_view',
		component: () => import('../views/hotel_reservation/view.vue')
	},
	// 房间预定路由
	{
		path: '/room_reservation/table',
		name: 'room_reservation_table',
		component: () => import('../views/room_reservation/table.vue')
	},
	{
		path: '/room_reservation/view',
		name: 'room_reservation_view',
		component: () => import('../views/room_reservation/view.vue')
	},
	// 房间取消路由
	{
		path: '/room_cancellation/table',
		name: 'room_cancellation_table',
		component: () => import('../views/room_cancellation/table.vue')
	},
	{
		path: '/room_cancellation/view',
		name: 'room_cancellation_view',
		component: () => import('../views/room_cancellation/view.vue')
	},
	// 景点购票路由
	{
		path: '/scenic_spot_ticket_purchase/table',
		name: 'scenic_spot_ticket_purchase_table',
		component: () => import('../views/scenic_spot_ticket_purchase/table.vue')
	},
	{
		path: '/scenic_spot_ticket_purchase/view',
		name: 'scenic_spot_ticket_purchase_view',
		component: () => import('../views/scenic_spot_ticket_purchase/view.vue')
	},
	// 购票信息路由
	{
		path: '/ticket_information/table',
		name: 'ticket_information_table',
		component: () => import('../views/ticket_information/table.vue')
	},
	{
		path: '/ticket_information/view',
		name: 'ticket_information_view',
		component: () => import('../views/ticket_information/view.vue')
	},
	// 购票取消路由
	{
		path: '/ticket_cancellation/table',
		name: 'ticket_cancellation_table',
		component: () => import('../views/ticket_cancellation/table.vue')
	},
	{
		path: '/ticket_cancellation/view',
		name: 'ticket_cancellation_view',
		component: () => import('../views/ticket_cancellation/view.vue')
	},
	// 旅游路线路由
	{
		path: '/tourist_route/table',
		name: 'tourist_route_table',
		component: () => import('../views/tourist_route/table.vue')
	},
	{
		path: '/tourist_route/view',
		name: 'tourist_route_view',
		component: () => import('../views/tourist_route/view.vue')
	},
	// 验票信息路由
	{
		path: '/ticket_check_information/table',
		name: 'ticket_check_information_table',
		component: () => import('../views/ticket_check_information/table.vue')
	},
	{
		path: '/ticket_check_information/view',
		name: 'ticket_check_information_view',
		component: () => import('../views/ticket_check_information/view.vue')
	},

	// 用户路由
	{
		path: '/user/table',
		name: 'user_table',
		component: () => import('../views/user/table.vue'),
		meta: {
			index: 0,
			title: '用户列表'
		}
	},
	{
		path: '/user/view',
		name: 'user_view',
		component: () => import('../views/user/view.vue'),
		meta: {
			index: 0,
			title: '用户详情'
		}
	},
	{
		path: '/user/info',
		name: 'user_info',
		component: () => import('../views/user/info.vue'),
		meta: {
			index: 0,
			title: '个人信息'
		}
	},
	// 用户组路由
	{
		path: '/user_group/table',
		name: 'user_group_table',
		component: () => import('../views/user_group/table.vue'),
		meta: {
			index: 0,
			title: '用户组列表'
		}
	},
	{
		path: '/user_group/view',
		name: 'user_group_view',
		component: () => import('../views/user_group/view.vue'),
		meta: {
			index: 0,
			title: '用户组详情'
		}
	}
]

const router = new VueRouter({
	mode: 'history',
	base: process.env.BASE_URL,
	routes
})

router.beforeEach((to, from, next) => {
	let token = to.query.token;
	if (token){
		$.db.set("token",token,120);
	}
	next();
})

router.afterEach((to, from, next) => {
	let title = "后疫情时代下的旅游管理-admin";
	document.title = title;
})

export default router
