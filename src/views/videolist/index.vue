<template>
  <div class="video">
    <video
      src="../../../public/1.mp4"
      type="video/mp4"
      autoplay
      controls
    ></video>
    <div @click="playVideo">
      <van-circle
        v-model="currentRate"
        :color="gradientColor"
        text="点我去看视频"
      />
    </div>
  </div>
</template>
<script>
export default {
  data() {
    return {
      currentRate: 0,
      gradientColor: {
        '0%': '#3fecff',
        '100%': '#6149f6',
      },
    };
  },
  methods: {
    playVideo() {
      location = 'https://www.bilibili.com/';
    },
  },
};
</script>
<style lang="scss" scoped>
.video {
  video {
    width: 100%;
    height: 100%;
    margin: 10vh auto;
  }
  .van-circle {
    position: relative;
    left: 50%;
    margin-left: -50px;
  }
}
</style>
