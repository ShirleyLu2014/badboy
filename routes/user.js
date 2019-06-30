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
router.get("/favs",(req,res)=>{
  var user=req.user;
  var {pno,psize}=req.query;
  var sql="select DISTINCT cid,sid,vid,tid,count,price,time,endtime,vname,vpic,city,stitle,sphoto from tours inner join venues using(vid) inner join shows using(sid) inner join arshows using(sid) inner join artists using(aid) inner join cities using (cid) inner join wants using(tid) where uid=?  and time>=? ";
  var sql2=`select count(*) as count from (${sql}) as table1`;
  var params=[user.uid, new Date().getTime()];
  pool.query(sql2,params,(err,result)=>{
    if(err){
      res.send({code:0, msg:String(err)})
    }else{
      var count=result[0]["count"];
      sql+=" order by time ";
      sql+=" limit ?,?";
      pno=pno||0;
      psize=psize||20;
      params.push(pno*psize,psize);
      pool.query(sql,params,(err,result)=>{
        if(err){
          res.send({code:0, msg:String(err)})
        }else{
          var tasks=[];
          for(var r of result){
            tasks.push(new Promise((function(r){return (open)=>{
              pool.query("SELECT distinct(aname) FROM arshows inner join artists using(aid) where sid=?",[r["sid"]],(err,result)=>{
                if(err){
                  console.log(err);
                }else{
                  var as=[];
                  for(var re of result){
                    as.push(re["aname"])
                  }
                  r["artists"]=as.join("/");
                  open();
                }
              })
            }})(r)))
          }
          Promise.all(tasks).then(()=>{
            res.send({
              pno,
              psize,
              pcount:Math.ceil(count/psize),
              count,
              result
            })
          })
        }
      })
    }
  })
})
router.post("/addfav",(req,res)=>{
  var user=req.user;
  var {tid}=req.body;
  var sql="insert into wants values(NULL,?,?)"
  pool.query(sql,[tid,user.uid],(err,result)=>{
    if(err){
      console.log(err);
      res.send({code:-1})
    }else{
      res.send({code:1})
    }
  })
})
router.post("/addticket",(req,res)=>{
  var user=req.user;
  var {tid,count}=req.body;
  var sql="select * from tickets where uid=? and tid=? and status=0";
  pool.query(sql,[user.uid,parseInt(tid)],(err,result)=>{
    if(err){
      console.log(err);
      res.send({code:-1})
    }else{
      console.log(result.length);
      if(result.length>0){
        var now=new Date().getTime();
        var sql="update tickets set count=count+?, time=? where uid=? and tid=?";
        pool.query(sql,[parseInt(count),now,user.uid,parseInt(tid)],(err,result)=>{
          if(err){
            console.log(err);
            res.send({code:-1});
          }else{
            res.send({code:1});
          }
        });
      }else{
        var now=new Date().getTime();
        var sql="insert into tickets values (NULL,?,?,?,?,0)";
        pool.query(sql,[parseInt(tid),user.uid,now,parseInt(count)],(err,result)=>{
          if(err){
            console.log(err);
            res.send({code:-1});
          }else{
            res.send({code:1});
          }
        });
      }
    }
  })
})
module.exports=router;