<template>
  <div class="filed">
    <van-field
      v-model="message"
      rows="2"
      autosize
      label="请开始bb"
      type="textarea"
      maxlength="200"
      placeholder="请输入留言"
      show-word-limit
    />
    <van-button
      type="primary"
      block
      @click="addcomment"
      >发布留言</van-button
    >
  </div>
</template>
<script>
import { Toast } from 'vant';
import { postcomment } from '@/api';
export default {
  data() {
    return {
      message: '',
    };
  },
  methods: {
    async addcomment() {
      await postcomment(666, this.message);
      Toast('你bb的内容已收到');
      this.message = '';
    },
  },
};
</script>
<style lang="scss" scoped></style>
