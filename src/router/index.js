import Vue from 'vue';
import VueRouter from 'vue-router';

Vue.use(VueRouter);

const routes = [
  {
    path: '/',
    component: () => import('@/layout'),
    redirect: '/home',
    children: [
      {
        path: '/home',
        component: () => import('../views/home'),
        meta: {
          title: '首页',
          active: 0,
          isShow: true,
        },
      },
      {
        path: '/home/newslist',
        component: () => import('../views/news/newslist'),
        meta: {
          title: '新闻资讯',
          isShow: false,
        },
      },
      {
        path: '/home/newsinfo/:id',
        component: () => import('../views/news/newsinfo'),
        props: true,
        meta: {
          title: '新闻详情',
          isShow: false,
        },
      },
      {
        path: '/home/photolist',
        component: () => import('../views/photos/photolist'),
        meta: {
          title: '图片列表',
          isShow: false,
        },
      },
      {
        path: '/home/photoinfo/:id',
        component: () => import('../views/photos/photoinfo'),
        props: true,
        meta: {
          title: '图片详情',
          isShow: false,
        },
      },
      {
        path: '/home/goodslist',
        component: () => import('../views/goods/goodslist'),
        meta: {
          title: '图片列表',
          isShow: false,
        },
      },
      {
        path: '/home/goodsinfo/:id',
        component: () => import('../views/goods/goodsinfo'),
        props: true,
        meta: {
          title: '图片详情',
          isShow: false,
        },
      },
      {
        path: '/friends',
        component: () => import('../views/friends'),
        meta: {
          title: '会员',
          active: 1,
          isShow: true,
        },
      },
      {
        path: '/cart',
        component: () => import('../views/cart'),
        meta: {
          title: '购物车',
          active: 2,
          isShow: false,
        },
      },
      {
        path: '/search',
        component: () => import('../views/search'),
        meta: {
          title: '搜索',
          active: 3,
          isShow: true,
        },
      },
    ],
  },
  {
    path: '*',
    component: () => import('@/views/404'),
  },
];

const router = new VueRouter({
  routes,
});

export default router;
