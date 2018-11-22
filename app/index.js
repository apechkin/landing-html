const express = require('express')
const app = express()
const port = process.env.NODE_PORT || 1337
const path = require('path')
const options = {
  extensions: ['htm', 'html']
}
app.use(
  '/media',
  express.static(path.join(__dirname, '../', '/node_modules/mdbootstrap'))
)
app.use('/', express.static(path.join(__dirname, '../', '/dist'), options))

app.listen(port, function () {
  console.log(`Example app listening on port ${port}!`)
})
