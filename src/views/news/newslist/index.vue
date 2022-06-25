<template>
  <div class="newslist">
    <van-card
      v-for="item in newslist"
      :key="item.id"
      :num="item.click"
      :title="item.title"
      :thumb="item.img_url"
      :thumb-link="'#/home/newsinfo/' + item.id"
    >
      <template #price>
        {{ item.add_time }}
      </template>
      <template #num> 阅读 {{ item.click }} 次 </template>
    </van-card>
  </div>
</template>
<script>
import { getNewsList } from '@/api';
export default {
  data() {
    return {
      newslist: [],
    };
  },
  created() {
    this.getNewsList();
  },
  methods: {
    async getNewsList() {
      const res = await getNewsList();
      this.newslist = res.data.message;
    },
  },
};
</script>
<style lang="scss" scoped>
.newslist {
  .van-card__title {
    font-size: 14px;
    font-weight: 600;
    display: -webkit-box;
    -webkit-box-orient: vertical;
    -webkit-line-clamp: 1;
  }
  .van-card__price {
    color: red;
  }

  .van-card__content {
    min-height: 55px;
  }
  .van-card__thumb {
    height: 55px;
  }
}
</style>
