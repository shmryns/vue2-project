const getParams = (data) => {
  let str = '';
  for (let key in data) {
    if (Object.prototype.hasOwnProperty.call(data, key)) {
      str += key + '=' + data[key] + '&';
    }
  }
  return str;
};

export const JSONP = (url, data, jsonp) => {
  return new Promise((resolve) => {
    let fnName = 'jQ_' + parseInt(Math.random() * 100000);
    window[fnName] = resolve;
    let newUrl = url + '?' + getParams(data) + jsonp + '=' + fnName;
    const oScript = document.createElement('script');
    document.body.appendChild(oScript);
    oScript.src = newUrl;
    oScript.onload = function () {
      this.remove();
      delete window.fnName;
    };
  });
};
