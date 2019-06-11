const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/hot",(req,res)=>{
  var cid=req.query.cid;
  var start=new Date().getTime();
  if(cid===undefined||cid==0){
    var sql=`select vid, city, vname, vaddress, vpic, count(*) as tcount from tours inner join venues using(vid) inner join cities using (cid) where time>=? group by vid order by tcount desc, time limit 2`;
    var params=[start];
  }else{
    var sql=`select vid, city, vname, vaddress, vpic, count(*) as tcount from tours inner join venues using(vid) inner join cities using (cid) where cid=? and time>=? group by vid order by tcount desc, time limit 2`;
    var params=[cid, start];
  }
  pool.query(sql,params,(err,result)=>{
    if(err){
      res.send({code:0, msg:String(err)});
    }else{
      res.send(result);
    }
  })
});
router.get("/",(req,res)=>{
  var cid=req.query.cid;
  var start=new Date().getTime();
  if(cid===undefined||cid==0){
    var sql=`select vid, vname, count(*) as tcount from tours inner join venues using(vid) inner join cities using (cid) where time>=? group by vid order by tcount desc, time`;
    var params=[start];
  }else{
    var sql=`select vid, vname, count(*) as tcount from tours inner join venues using(vid) inner join cities using (cid) where cid=? and time>=? group by vid order by tcount desc, time`;
    var params=[cid, start];
  }
  pool.query(sql,params,(err,result)=>{
    if(err){
      res.send({code:0, msg:String(err)});
    }else{
      res.send(result);
    }
  })
});
router.get("/list",(req,res)=>{
  var cid=req.query.cid;
  var start=new Date().getTime();
  if(cid===undefined||cid==0){
    var sql=`select vid, city, vname, vaddress, vpic, count(*) as tcount from tours inner join venues using(vid) inner join cities using (cid) where time>=? group by vid order by tcount desc, time`;
    var params=[start];
  }else{
    var sql=`select vid, city, vname, vaddress, vpic, count(*) as tcount from tours inner join venues using(vid) inner join cities using (cid) where cid=? and time>=? group by vid order by tcount desc, time`;
    var params=[cid, start];
  }
  pool.query(sql,params,(err,result)=>{
    if(err){
      res.send({code:0, msg:String(err)});
    }else{
      res.send(result);
    }
  })
});
module.exports=router;