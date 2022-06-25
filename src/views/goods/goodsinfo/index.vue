<template>
  <div class="goodsinfo">
    <!-- swiper -->
    <div class="my-panel">
      <Swiper :lunbolist="lunbolist"></Swiper>
    </div>
    <van-panel
      class="my-panel"
      :title="goodsInfo.title"
    >
      <div class="content">
        <p class="price">
          <span class="new">现价: {{ goodsInfo.sell_price }}</span>
          <span class="old">原价: {{ goodsInfo.market_price }}</span>
        </p>
        <p class="num">购买数量:<van-stepper v-model="value" /></p>
        <!-- <p>
          <van-button
            type="primary"
            size="small"
            >立即购买</van-button
          >
          <van-button
            type="danger"
            size="small"
            >加入购物车</van-button
          >
        </p> -->
      </div>
    </van-panel>

    <van-panel
      class="my-panel"
      :title="goodsInfo.title"
    >
      <div class="content">
        <p>商品货号:{{ goodsInfo.goods_no }}</p>
        <p>库存情况:{{ goodsInfo.stock_quantity }}件</p>
        <p>上架时间:{{ goodsInfo.add_time | datefmt }}</p>
      </div>
    </van-panel>
    <Comment :id="id"></Comment>

    <van-goods-action>
      <van-goods-action-icon
        icon="chat-o"
        text="客服"
        dot
      />
      <van-goods-action-icon
        icon="cart-o"
        text="购物车"
        :info="count"
        to="/cart"
      />
      <van-goods-action-icon
        icon="shop-o"
        text="店铺"
        badge="12"
      />
      <van-goods-action-button
        type="warning"
        text="加入购物车"
        @click="addCart"
      />
      <van-goods-action-button
        type="danger"
        text="立即购买"
      />
    </van-goods-action>
  </div>
</template>
<script>
import { getGoodsInfo, getIhumImages } from '@/api';
import Comment from '@/components/Comment';
import Swiper from '@/components/Swiper';
import { mapGetters } from 'vuex';
export default {
  computed: {
    // ...mapGetters('cart', ['getAllCount']),
    ...mapGetters({
      count: 'cart/getAllCount',
    }),
  },
  components: {
    Swiper,
    Comment,
  },
  props: ['id'],
  data() {
    return {
      goodsInfo: {},
      lunbolist: [],
      value: 1,
    };
  },
  created() {
    this.getGoodsInfo();
    this.getIhumImages();
  },
  methods: {
    async getGoodsInfo() {
      const res = await getGoodsInfo(this.id);
      this.goodsInfo = res.data.message;
    },
    async getIhumImages() {
      const res = await getIhumImages(this.id);
      console.log(res.data.message);
      this.lunbolist = res.data.message;
    },
    addCart() {
      const goodsInfo = {
        id: this.id,
        src: this.lunbolist[0].src,
        count: this.value,
        price: this.goodsInfo.sell_price,
        isChecked: true,
        title: this.goodsInfo.title,
      };
      this.$store.commit('cart/ADD_CART', goodsInfo);
    },
  },
};
</script>
<style lang="scss" scoped>
.goodsinfo {
  padding: 10px;
  .my-panel {
    border: 1px solid #eee;
    margin-bottom: 10px;
    .van-cell__title {
      font-size: 14px;
      font-weight: 600;
    }
    .content {
      margin-left: 15px;
      font-size: 12px;
      .price {
        .new {
          color: red;
          margin-right: 20px;
        }
        .old {
          text-decoration: line-through;
        }
      }
      .num {
        display: flex;
        align-items: center;
      }
    }
  }
}
</style>
