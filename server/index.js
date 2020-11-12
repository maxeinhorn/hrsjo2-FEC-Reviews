const express = require('express');
const app = express();
const port = 3000;
const path = require('path');

app.use(express.static(path.join(__dirname, '../client/dist')));

app.get('/product', (req, res) => {
  res.send('Hello World!!!')
})

app.listen(port, () => {
  console.log(`Listening at port ${port}`)
})