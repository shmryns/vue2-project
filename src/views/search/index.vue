<template>
  <div>
    <van-search
      v-model="value"
      show-action
      placeholder="请输入搜索关键词"
      @search="onSearch"
    >
      <template #action>
        <div @click="onSearch">搜索</div>
      </template>
    </van-search>
    <van-list>
      <van-cell
        v-for="item in s"
        :key="item"
        :title="item"
      />
    </van-list>
  </div>
</template>
<script>
import { JSONP } from '@/utils/jsonp.js';
export default {
  data() {
    return {
      value: '',
      s: '',
    };
  },
  methods: {
    async onSearch() {
      if (this.value == '') return;
      const { s } = await JSONP('https://sp0.baidu.com/5a1Fazu8AA54nxGko9WTAnF6hhy/su', { wd: this.value }, 'cb');
      // console.log(s);
      this.s = s;
    },
  },
};
</script>
<style lang="scss" scoped></style>
