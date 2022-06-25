<template>
  <div class="newsinfo">
    <van-panel
      :title="newsInfo.zhaiyao"
      :status="`阅读${newsInfo.click}次`"
    >
      <div class="content">
        {{ newsInfo.content }}
      </div>
    </van-panel>
    <img v-lazy="newsInfo.img_url" />
    <Comment :id="id"></Comment>
  </div>
</template>
<script>
import { getNewsInfo } from '@/api';
import Comment from '@/components/Comment';
export default {
  components: {
    Comment,
  },
  props: ['id'],
  data() {
    return {
      newsInfo: {},
    };
  },
  created() {
    this.getNewsInfo();
  },
  methods: {
    async getNewsInfo() {
      const res = await getNewsInfo(this.id);
      this.newsInfo = res.data.message;
    },
  },
};
</script>
<style lang="scss" scoped>
.newsinfo {
  padding: 0 10px;
  .van-cell__title {
    font-size: 14px;
    font-weight: 600;
  }
  .content {
    text-indent: 2em;
    font-size: 12px;
  }
  img {
    width: 100%;
  }
}
</style>
