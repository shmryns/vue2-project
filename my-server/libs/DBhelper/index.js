//先使用 yarn add mysql 命令下载一个mysql的依赖
const mysql = require('mysql')

const pool = mysql.createPool({
  connectionLimit: 10, //设置最大连接数量
  host: '127.0.0.1', //ip地址
  user: 'root',
  password: 'root',
  database: 'vue2', //数据库名称
})

const exec = (sql, params = []) => {
  return new Promise((resolve, reject) => {
    pool.getConnection(function (err, conn) {
      if (err) {
        console.log('连接数据库失败!:' + err.message)
        reject(err.message)
      } else {
        conn.query(sql, params, function (err, result) {
          if (err) {
            console.log('执行sql语句失败!:' + err.message)
            reject(err.message)
          } else {
            resolve(result)
            conn.release() //释放连接
          }
        })
      }
    })
  })
}

module.exports = {
  exec,
}
