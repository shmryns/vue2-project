<template>
  <div class="photolist">
    <van-tabs animated>
      <van-tab
        v-for="item in cates"
        :key="item.id"
      >
        <template #title>
          <span @click="getImages(item.id)">
            {{ item.title }}
          </span>
        </template>

        <div
          class="imgs-box"
          v-if="images.length > 0"
        >
          <img
            v-for="img in images"
            v-lazy="img.img_url"
            :key="img.id"
            alt=""
            @click="goDetail('/home/photoinfo', img.id)"
          />
        </div>
        <div v-else>暂无数据</div>
      </van-tab>
    </van-tabs>
  </div>
</template>
<script>
import { getImgCategory, getImages } from '@/api';
// import mixins from '@/mixins';

export default {
  // mixins: [mixins],
  data() {
    return {
      cates: [],
      images: [],
    };
  },
  created() {
    this.getImgCategory();
    this.getImages(0);
  },
  methods: {
    async getImgCategory() {
      const res = await getImgCategory();
      res.data.message.unshift({
        id: 0,
        title: '全部',
      });
      this.cates = res.data.message;
    },
    async getImages(id) {
      // console.log(id);
      const res = await getImages(id);
      this.images = res.data.message;
    },
  },
};
</script>
<style lang="scss" scoped>
.photolist {
  .imgs-box {
    img {
      width: 100%;
      height: 100%;
      margin-bottom: 2px;
      display: block;
    }
  }
}
</style>
