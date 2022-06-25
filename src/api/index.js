import request from '../utils/request';

export const getLunbo = () => {
  return request({
    method: 'get',
    url: '/api/getlunbo',
  });
};

export const getGrids = () => {
  return request({
    method: 'get',
    url: '/api/grids',
  });
};

export const getNewsList = () => {
  return request({
    method: 'get',
    url: '/api/getnewslist',
  });
};

export const getNewsInfo = (id) => {
  return request({
    method: 'get',
    url: '/api/getnew/' + id,
  });
};

export const getComments = ({ id, page, limit }) => {
  return request({
    method: 'get',
    url: `/api/getcomments/${id}?pageindex=${page}&limit=${limit}`,
  });
};

export const postcomment = (id, msg) => {
  return request({
    method: 'post',
    url: `/api/postcomment/${id}`,
    data: {
      content: msg,
    },
  });
};

export const getImgCategory = () => {
  return request({
    method: 'get',
    url: '/api/getimgcategory',
  });
};

export const getImages = (id) => {
  return request({
    method: 'get',
    url: '/api/getimages/' + id,
  });
};

export const getImageInfo = (id) => {
  return request({
    method: 'get',
    url: '/api/getimageInfo/' + id,
  });
};

export const getIhumImages = (id) => {
  return request({
    method: 'get',
    url: '/api/getthumimages/' + id,
  });
};

export const getGoods = ({ page, limit }) => {
  return request({
    method: 'get',
    url: `/api/getgoods?pageindex=${page}&limit=${limit}`,
  });
};

export const getGoodsInfo = (id) => {
  return request({
    method: 'get',
    url: '/api/goods/getinfo/' + id,
  });
};
