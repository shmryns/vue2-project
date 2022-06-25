// 全局写法
import Vue from 'vue';
Vue.mixin({
  methods: {
    goDetail(url, id) {
      this.$router.push(url + '/' + id);
    },
  },
});
// 局部写法
export default {
  methods: {
    goDetail(url, id) {
      this.$router.push(url + '/' + id);
    },
  },
};
