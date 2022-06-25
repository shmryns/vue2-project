import Vue from 'vue';
import moment from 'moment';

Vue.filter('datefmt', (arg) => {
  return moment(arg).format('YYYY-MM-DD HH:mm:ss');
});
