const express = require('express')
const db = require('../../libs/DBhelper')
const ChineseName = require('chinese-name')
const moment = require('moment')

const apiRouter = express.Router()
apiRouter.get('/getlunbo', async function (req, res) {
  let sql = 'select *from getlunbo'
  let result = await db.exec(sql)
  // console.log(result)
  res.send({ status: 0, message: result, affectedRows: 0 })
})

apiRouter.get('/grids', async function (req, res) {
  let sql = 'select *from grids'
  let result = await db.exec(sql)
  // console.log(result)
  res.send({ status: 0, message: result, affectedRows: 0 })
})

apiRouter.get('/getnewslist', async function (req, res) {
  let sql = 'select *from getnews'
  let result = await db.exec(sql)
  // console.log(result)
  res.send({ status: 0, message: result, affectedRows: 0 })
})

apiRouter.get('/getnew/:id', async function (req, res) {
  let sql = 'select *from getnews where id = ?'
  let parmas = [req.params.id]
  let result = await db.exec(sql, parmas)
  // console.log(result)
  res.send({ status: 0, message: result[0], affectedRows: 0 })
})

apiRouter.get('/getimgcategory', async function (req, res) {
  let sql = 'select *from getimgcategory'
  let result = await db.exec(sql)
  // console.log(result)
  res.send({ status: 0, message: result, affectedRows: 0 })
})

apiRouter.get('/getimages/:id', async function (req, res) {
  let params = [req.params.id]
  if (params[0] == '0') {
    let sql = 'select *from getimages'
    var result = await db.exec(sql)
  } else {
    let sql = 'select *from getimages where class_id = ?'
    var result = await db.exec(sql, params)
  }
  res.send({ status: 0, message: result, affectedRows: 0 })
})

apiRouter.get('/getimageInfo/:id', async function (req, res) {
  let sql = 'select id,title,click,content from getimages where id = ?'
  let params = [req.params.id]
  let result = await db.exec(sql, params)
  // console.log(result)
  res.send({ status: 0, message: result[0], affectedRows: 0 })
})

apiRouter.get('/getthumimages/:id', async function (req, res) {
  let sql = 'select *from getthumimages where thumbs_id = ?'
  let params = [req.params.id]
  let result = await db.exec(sql, params)
  // console.log(result)
  res.send({ status: 0, message: result, affectedRows: 0 })
})

apiRouter.post('/postcomment/:id', async function (req, res) {
  console.log(req.body.content)
  if (!req.body.content || !req.body.content.trim()) {
    res.send({
      status: -1,
      message: '请不要提交空的内容!',
      affectedRows: 0,
    })
    return false
  }
  let time = moment(Date.now()).format('YYYY-MM-DD HH:mm:ss')
  let name = ChineseName.random()
  let sql =
    'insert into `comments` (`artid`,`user_name`,`add_time`,`content`)values(?,?,?,?)'
  let params = [req.params.id, name, time, req.body.content]
  let result = await db.exec(sql, params)
  if (result.affectedRows > 0) {
    res.send({
      status: 0,
      message: '添加成功!',
      affectedRows: result.affectedRows,
    })
  } else {
    res.send({
      status: -1,
      message: '添加失败!',
      affectedRows: result.affectedRows,
    })
  }
})

apiRouter.get('/getcomments/:id', async function (req, res) {
  let sql = 'select *from comments where artid = ?'
  let params = [req.params.id]
  let result = await db.exec(sql, params)
  const { pageindex, limit } = req.query
  // console.log(result.reverse())
  let n = pageindex * limit
  // 1  20 --->  0  20
  // 2  20 --->  20  40
  // 3  20 --->  40  60
  // 4  20 --->  60 80
  res.send({
    status: 0,
    count: result.length,
    message: result.reverse().splice(n - limit, n),
    affectedRows: 0,
  })
})

// 获取所有商品
apiRouter.get('/getgoods', async function (req, res) {
  let sql = 'select *from getgoods'
  let result = await db.exec(sql)
  const { pageindex, limit } = req.query
  let n = pageindex * limit
  res.send({
    status: 0,
    count: result.length,
    message: result.reverse().splice(n - limit, n),
    affectedRows: 0,
  })
})

// 获取商品的详细信息
apiRouter.get('/goods/getinfo/:id', async function (req, res) {
  let params = [req.params.id]
  let sql = 'select *from getgoods where goods_id=?'
  let result = await db.exec(sql, params)
  res.send({ status: 0, message: result[0], affectedRows: 0 })
})
module.exports = apiRouter
