#! /usr/bin/bash
mkdir $1
cd $PWD/$1
touch app.js
npm init -y
npm i express body-parser ejs mongoose
echo "const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const mongoose = require('mongoose');
const ejs = require('ejs');
app.set('view engine', 'ejs');
app.listen(3000, function () {
  console.log('Server started on port 3000');
});
app.use(bodyParser.urlencoded({ extended: true }));
mongoose.connect('mongodb://localhost:27017/$2', {
  useNewUrlParser: true,
  useUnifiedTopology: true,
});
app.get('/',(req,res)=>{
  res.send('hello world');
});" >app.js
code .
