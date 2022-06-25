<template>
  <div class="photoinfo">
    <van-panel
      :title="imageInfo.title"
      :status="`阅读${imageInfo.click}次`"
    >
      <div class="content">
        {{ imageInfo.content }}
      </div>
    </van-panel>
    <div class="imgs-box">
      <img
        v-for="(item, index) in thums"
        :key="item.id"
        v-lazy="item.src"
        alt=""
        @click="showImge(index)"
      />
    </div>
    <Comment :id="id"></Comment>
  </div>
</template>
<script>
import { getImageInfo, getIhumImages } from '@/api';
import Comment from '@/components/Comment';
import { ImagePreview } from 'vant';

export default {
  components: {
    Comment,
  },
  props: ['id'],
  data() {
    return {
      imageInfo: {},
      thums: [],
    };
  },
  created() {
    this.getImageInfo();
    this.getIhumImages();
    console.log(this.imageInfo, this.thums);
  },
  methods: {
    async getImageInfo() {
      const res = await getImageInfo(this.id);
      this.imageInfo = res.data.message;
    },
    async getIhumImages() {
      const res = await getIhumImages(this.id);
      this.thums = res.data.message;
    },
    showImge(startPosition) {
      const images = [];
      this.thums.forEach((item) => {
        if (item.src) images.push(item.src);
      });
      ImagePreview({
        images,
        startPosition,
      });
    },
  },
};
</script>
<style lang="scss" scoped>
.photoinfo {
  padding: 0 10px;
  .van-cell__title {
    font-size: 14px;
    font-weight: 600;
  }
  .content {
    text-indent: 2em;
    font-size: 12px;
  }

  .imgs-box {
    margin-top: 10px;
    display: flex;
    justify-content: space-between;
    img {
      width: 100%;
      height: 100%;
    }
  }
}
</style>
