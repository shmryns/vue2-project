<template>
  <div class="home">
    <!-- swipe -->
    <Swiper
      :lunbolist="lunbolist"
      :autoplay="3000"
    ></Swiper>
    <!-- grid -->
    <van-grid
      class="my-grid"
      :column-num="3"
    >
      <van-grid-item
        v-for="grid in grids"
        :key="grid.id"
        :icon="grid.src"
        :text="grid.title"
        :to="grid.to"
      />
    </van-grid>
  </div>
</template>
<script>
import { getLunbo, getGrids } from '@/api';
import Swiper from '@/components/Swiper';
export default {
  components: {
    Swiper,
  },
  data() {
    return {
      lunbolist: [],
      grids: [],
    };
  },
  created() {
    this.getLunbo();
    this.getGrids();
  },
  methods: {
    async getLunbo() {
      const res = await getLunbo();
      this.lunbolist = res.data.message;
    },
    async getGrids() {
      const res = await getGrids();
      this.grids = res.data.message;
    },
  },
};
</script>
<style lang="scss">
.home {
  .my-swipe {
    height: 200px;
    img {
      width: 100%;
      height: 100%;
    }
  }
  .my-grid {
    .van-grid-item__icon {
      font-size: 60px;
    }
  }
}
</style>
