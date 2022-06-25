<template>
  <div class="goodslist">
    <div
      class="goodslist-item"
      v-for="(item, index) in goods"
      :key="index"
      @click="goDetail('/home/goodsinfo', item.id)"
    >
      <div class="img-box">
        <img v-lazy="item.img_url" />
      </div>
      <h2 class="title">{{ item.title }}</h2>
      <div class="info">
        <div class="desc">主动降噪</div>
        <div class="sell">
          <span>热卖中</span>
          <span>剩余{{ item.stock_quantity }}件</span>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import { getGoods } from '@/api';
// import mixins from '@/mixins';
export default {
  // mixins: [mixins],
  data() {
    return {
      goods: [],
      page: 0,
      limit: 6,
    };
  },
  created() {
    this.getGoods();
  },
  methods: {
    async getGoods() {
      ++this.page;
      const res = await getGoods({ page: this.page, limit: this.limit });
      this.goods = res.data.message;
    },
  },
};
</script>
<style lang="scss" scoped>
.goodslist {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  padding: 10px;
  .goodslist-item {
    width: 48%;
    border: 1px solid #eee;
    margin-bottom: 10px;
    padding: 10px;
    box-sizing: border-box;
    .img-box {
      width: 164px;
      height: 164px;
      img {
        width: 164px;
        height: 164px;
      }
    }
    .title {
      font-size: 14px;
    }
    .info {
      font-size: 12px;
      .sell {
        margin-top: 10px;
        & :first-child {
          margin-right: 20px;
        }
      }
    }
  }
}
</style>
