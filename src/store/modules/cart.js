const state = {
  cart: JSON.parse(localStorage.getItem('cart') || '[]'),
};

const mutations = {
  ADD_CART(state, goodsinfo) {
    var flag = false;
    state.cart.forEach((item) => {
      if (item.id === goodsinfo.id) {
        item.count += goodsinfo.count;
        flag = true;
      }
    });
    if (!flag) {
      state.cart.push(goodsinfo);
    }

    localStorage.setItem('cart', JSON.stringify(state.cart));
  },
  CHANGE_COUNT(state, goodsinfo) {
    state.cart.forEach((item) => {
      if (item.id === goodsinfo.id) {
        item.count = goodsinfo.count;
      }
    });
    localStorage.setItem('cart', JSON.stringify(state.cart));
  },
  CHECK_ALL(state) {
    let a = !this.getters['cart/getCheckAll'];
    state.cart.forEach((item) => {
      item.isChecked = a;
    });
  },
};

const actions = {};

const getters = {
  getAllCount(state) {
    var c = 0;
    state.cart.forEach((item) => {
      c += item.count;
    });
    return c;
  },
  getAllPrice(state) {
    var p = 0;
    state.cart.forEach((item) => {
      if (item.isChecked) {
        p += item.count * item.price;
      }
    });
    return p;
  },
  getCheckAll(state) {
    return state.cart.every((item) => item.isChecked);
  },
};

export default {
  namespaced: true,
  state,
  mutations,
  actions,
  getters,
};
