const express = require('express');
const app = express();
const port = 3000;
const path = require('path');
const db = require('../database/index.js');
const bodyParser = require('body-parser');

app.use(bodyParser.json());

app.use(express.static(path.join(__dirname, '../client/dist')));

app.get('/api', (req, res) => {
  // console.log(db.connection.query);
  // res.send('BACKING UP')
  db.connection.query('SELECT * FROM reviews', (err, result) => {
    if (err) {
      console.log('THE ERROR IS HERE ', err)
    }
    console.log('Does success case work?');
    res.send(result)
  })
})

app.listen(port, () => {
  console.log(`Listening at port ${port}`)
})