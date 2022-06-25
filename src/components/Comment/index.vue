<template>
  <div class="comment">
    <van-field
      class="my-field"
      v-model="message"
      rows="2"
      autosize
      label="发表评论"
      type="textarea"
      maxlength="50"
      placeholder="请输入bb的内容"
      show-word-limit
    />
    <van-button
      type="primary"
      block
      @click="addcomment"
      >提交评论</van-button
    >
    <div class="comment-list">
      <van-card
        :desc="item.content"
        v-for="(item, index) in comments"
        :key="index"
      >
        <template #thumb>
          <div>
            <van-icon
              class="user-icon"
              name="https://b.yzcdn.cn/vant/icon-demo-1126.png"
            />
            <div class="user-name">{{ item.user_name }}</div>
          </div>
        </template>
        <template #title>
          <van-rate
            v-model="item.rate"
            readonly
          />
        </template>
        <template #price> {{ item.add_time }}</template>
      </van-card>
    </div>

    <van-loading
      size="24px"
      v-if="isLoading"
      >加载中...</van-loading
    >
    <button
      class="btn"
      v-else
      type="primary"
      block
      @click="getMore"
    >
      {{ moreText }}
    </button>
  </div>
</template>
<script>
import { Toast } from 'vant';
import { getComments, postcomment } from '@/api';
export default {
  props: ['id'],
  data() {
    return {
      message: '',
      // 页码
      page: 0,
      limit: 20,
      comments: [],
      hasMore: false,
      isLoading: false,
    };
  },
  created() {
    this.getComments();
  },
  methods: {
    async getComments() {
      // 当数据到达临界点的时候终下面的代码
      if (this.hasMore !== false) return;
      ++this.page;
      const res = await getComments({ id: this.id, page: this.page, limit: this.limit });
      // this.comments = this.comments.concat(res.data.message);
      // 上一页和下一页数据进行拼接
      this.comments = [...this.comments, ...res.data.message];
      // 计算数据请求的临界点
      this.hasMore = this.page * this.limit > res.data.count;
    },
    getMore() {
      this.isLoading = true;
      setTimeout(() => {
        this.getComments();
        this.isLoading = false;
      }, 500);
    },
    async addcomment() {
      const { data, status } = await postcomment(this.id, this.message);
      Toast(data);
      if (status == '-1') return; // 添加失败
      const res = await getComments({ id: this.id, page: 1, limit: this.limit });
      this.comments = res.data.message;
    },
  },
  computed: {
    moreText() {
      return this.hasMore ? '我也是有底线的' : '加载更多';
    },
  },
};
</script>
<style lang="scss" scoped>
.comment {
  .my-field {
    border: 1px solid #eee;
    margin: 10px 0;
  }
  .comment-list {
    margin-top: 10px;
  }
  .user-icon {
    font-size: 60px;
  }
  .user-name {
    font-size: 14px;
  }
  .van-card__desc {
    margin-top: 15px;
  }
  .btn {
    width: 100%;
    outline: none;
    border: 0;
    background-color: #fff;
    font-size: 12px;
    color: #969799;
  }
  .van-loading {
    text-align: center;
  }
}
</style>
