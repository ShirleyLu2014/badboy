//使用express构建web服务器 --11:25
const express = require('express');
const bodyParser = require('body-parser');
const cors=require("cors");
const session=require("express-session");
/*引入路由模块*/
const tours=require("./routes/tours");
const artists=require("./routes/artists");
const venues=require("./routes/venues");
const cities=require("./routes/cities");
const styles=require("./routes/styles");

var app = express();
//新浪云要求只能监听5050
app.listen(5050);
//统一伪装跨域，之后不用再res.writeHead
app.use(cors({
  origin:"http://localhost:8080",
  credentials:true
}));
//托管静态资源到public目录下
app.use(express.static('public'));
//使用body-parser中间件
app.use(bodyParser.urlencoded({extended:false}));
//配置session
app.use(session({
  secret: 'keyboard cat',
  resave: true,
  saveUninitialized: false
}));
/*使用路由器来管理路由*/
app.use("/tours",tours);
app.use("/artists",artists);
app.use("/venues",venues);
app.use("/cities",cities);
app.use("/styles",styles);


