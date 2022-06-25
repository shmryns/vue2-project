import Vue from 'vue';
import Vant, { Lazyload, Toast } from 'vant';
import 'vant/lib/index.css';

Vue.use(Toast);
Vue.use(Lazyload, {
  loading:
    'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F01f4055864c2c3a8012060c8dc7eca.gif&refer=http%3A%2F%2Fimg.zcool.cn&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=auto?sec=1656062295&t=8d8f6e57fbbc13bc0cab071a6303387b',
  // loading: require('@/assets/loading.gif')
  // /相当于绝对路径public
  // loading: '/loading.gif'
});
Vue.use(Vant);
