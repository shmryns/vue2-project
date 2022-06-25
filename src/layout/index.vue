<template>
  <div class="app">
    <van-nav-bar
      v-if="$route.path === '/home'"
      :title="title"
      fixed
    />
    <van-nav-bar
      v-else
      :title="title"
      left-text="返回"
      left-arrow
      fixed
      @click-left="onClickLeft"
    />
    <!-- 二级路由 -->
    <router-view></router-view>
    <van-tabbar
      v-model="active"
      v-if="$route.meta.isShow"
    >
      <van-tabbar-item
        icon="home-o"
        to="/home"
      ></van-tabbar-item>
      <van-tabbar-item
        icon="friends-o"
        to="/friends"
      ></van-tabbar-item>
      <van-tabbar-item
        to="/cart"
        icon="cart-o"
        :info="$store.getters['cart/getAllCount']"
      ></van-tabbar-item>
      <van-tabbar-item
        icon="search"
        to="/search"
      ></van-tabbar-item>
    </van-tabbar>
  </div>
</template>
<script>
export default {
  data() {
    return {
      title: this.$route.meta.title || '首页',
      active: this.$route.meta.active || 0,
    };
  },
  methods: {
    onClickLeft() {
      // console.log('返回上一页');
      this.$router.go(-1);
    },
  },
  watch: {
    $route(val) {
      this.title = val.meta.title;
      this.active = val.meta.active;
    },
  },
};
</script>
<style lang="scss" scoped>
.app {
  margin-top: 46px;
}
</style>
