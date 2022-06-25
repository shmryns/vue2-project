<template>
  <div class="cart">
    <div class="cart-list">
      <div
        class="cart-list-item"
        v-for="item in cart"
        :key="item.id"
      >
        <div class="cart-left">
          <van-checkbox v-model="item.isChecked"></van-checkbox>
        </div>
        <div class="cart-right">
          <van-card
            class="my-card"
            :price="item.price + '.00'"
            desc="描述信息"
            :title="item.title"
            :thumb="item.src"
          >
            <template #num>
              <van-stepper
                v-model="item.count"
                theme="round"
                button-size="22"
                disable-input
              />
            </template>
          </van-card>
        </div>
      </div>
    </div>
    <van-popup v-model="show"
      ><img
        style="width: 120px; height: 120px"
        src="@/assets/pay.png"
    /></van-popup>
    <van-submit-bar
      :price="getAllPrice * 100"
      button-text="提交订单"
      @submit="showPopup"
    >
      <!-- <van-checkbox v-model="getCheckAll">全选</van-checkbox> -->
      <input
        type="checkbox"
        :checked="getCheckAll"
        @click="handleCheckAll"
      />
      <template #tip> 你的收货地址不支持同城送, <span>我们已为你推荐快递</span> </template>
    </van-submit-bar>
  </div>
</template>
<script>
import { mapState, mapGetters } from 'vuex';
export default {
  computed: {
    ...mapState('cart', ['cart']),
    ...mapGetters('cart', ['getAllPrice', 'getCheckAll']),
  },
  data() {
    return {
      checked: true,
      show: false,
    };
  },
  methods: {
    handleCheckAll() {
      this.$store.commit('cart/CHECK_ALL');
    },
    showPopup() {
      this.show = true;
    },
  },
};
</script>
<style lang="scss">
.cart {
  padding: 10px;
  .cart-list {
    .cart-list-item {
      display: flex;
      align-items: center;
      border: 1px solid #eee;
      margin-bottom: 10px;
      .cart-left {
        flex: 0.5;
        display: flex;
        justify-content: center;
      }
      .cart-right {
        flex: 3;
        .my-card {
          background-color: #fff;
        }
      }
    }
  }
}
</style>
