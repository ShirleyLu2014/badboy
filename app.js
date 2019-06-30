//使用express构建web服务器 --11:25
const express = require('express');
const bodyParser = require('body-parser');
const cors=require("cors");
//const session=require("express-session");
/*引入路由模块*/
const tours=require("./routes/tours");
const artists=require("./routes/artists");
const venues=require("./routes/venues");
const cities=require("./routes/cities");
const styles=require("./routes/styles");
const user=require("./routes/user");
const orders=require("./routes/orders");
/*引入token的模块*/
const jwt=require("./jwt.js")


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
/*app.use(session({
  secret: 'keyboard cat',
  resave: true,
  saveUninitialized: false
}));*/
app.use((req, res, next)=>{ 
  if (req.url != '/user/signin' && (req.url.startsWith("/user") || req.url.startsWith("/orders"))) {
    let token = req.headers.token;
    let result = jwt.verifyToken(token);
    // 如果考验通过就next，否则就返回登陆信息不正确
    if(result===undefined){
      res.send({status:403, msg:"未提供证书"})
    }else if (result.name == 'TokenExpiredError') {
      res.send({status: 403, msg: '登录超时，请重新登录'});
    } else if (result.name=="JsonWebTokenError"){
      res.send({status: 403, msg: '证书出错'})
    } else{
      req.user=result;
      next();
    }
  } else {
    next();
  }
});
/*使用路由器来管理路由*/
app.use("/tours",tours);
app.use("/artists",artists);
app.use("/venues",venues);
app.use("/cities",cities);
app.use("/styles",styles);
app.use("/user",user);
app.use("/orders",orders);


