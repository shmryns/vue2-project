<template>
  <van-swipe
    class="my-swipe"
    :autoplay="autoplay"
    indicator-color="white"
  >
    <van-swipe-item
      v-for="item in lunbolist"
      :key="item.id"
    >
      <img
        v-lazy="item.src || item.img"
        alt=""
      />
    </van-swipe-item>
  </van-swipe>
</template>
<script>
export default {
  props: {
    lunbolist: {
      type: Array,
      default: () => [],
    },
    autoplay: {
      type: Number,
      default: 0,
    },
  },
  data() {
    return {};
  },
};
</script>
<style lang="scss" scoped>
.my-swipe {
  height: 150px;
  text-align: center;
  img {
    height: 100%;
  }
}
</style>
