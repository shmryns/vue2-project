import axios from 'axios';
import { Toast } from 'vant';
const service = axios.create({
  // baseURL: 'http://itfly.vip',
  // baseURL: 'http://10.41.3.239',
  // baseURL: 'http://127.0.0.1',
  baseURL: 'http://124.220.199.146',
  timeout: 3000,
});

axios.interceptors.response.use(
  (config) => config,
  (err) => {
    Toast.fail('网络请求失败了...');
    Promise.reject(err);
  }
);
export default service;
