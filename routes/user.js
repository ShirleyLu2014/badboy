const express=require("express");
const router=express.Router();
const pool=require("../pool");
const jwt=require("../jwt");


router.post("/signin",(req,res)=>{
  var {uname,upwd}=req.body;
  if(uname&&upwd){
    var sql="select uid,uname from users where uname=? and binary upwd=?";
    pool.query(sql,[uname,upwd],(err,result)=>{
      if(err){
        console.log(err);
        res.send({code:-1, msg:"登录不成功！"})
      }else{
        if(result.length>0){
          res.send({code:1, token:jwt.generateToken(result[0])})
        }else{
          res.send({code:-1, msg:"用户名密码不正确"})
        }
      }
    })
  }else{
    res.send({code:-1, msg:"未提供用户名或密码"})
  }
})
router.get("/profile",(req,res)=>{
  var user=req.user;
  var sql="select  uid,uname,email,phone,avatar,rname,gender,cid,city, const,blood from users inner join cities using(cid) where uid=?";
  pool.query(sql,[user.uid],(err,result)=>{
    if(err){
      console.log(err);
      res.send({code:-1})
    }else{
      res.send(result[0])
    }
  })
})


module.exports=router;