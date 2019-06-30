const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/",(req,res)=>{
  var user=req.user;
  var {status=0, pno=0, psize=4}=req.query;
  var sql="select cid,vid,tid,tkid,uid,tickets.time as ttime, tickets.count as tcount,status,sid,tours.count as totalCount,price,tours.time as starttime,endtime,vname,vphone,vaddress,vpic,city from tickets inner join tours using(tid) inner join venues using(vid) inner join cities using (cid) where uid=? ";
  if(status==0){
    var params=[user.uid];
  }else{
    var params=[user.uid,status,new Date().getTime()];
    sql+=` and status=? and tours.time>=?`;
  }
  var sql2=`select count(*) as count from (${sql}) as table1`
  pool.query(sql2,params,(err,result)=>{
    if(err){
      res.send({code:0, msg:String(err)})
    }else{
      var count=result[0]["count"];
      sql+=" order by ttime desc";
      sql+=" limit ?,?";
      params.push(pno*psize,psize);
      pool.query(sql,params,(err,result)=>{
        if(err){
          res.send({code:0, msg:String(err)})
        }else{
          res.send({
            pno,
            psize,
            pcount:Math.ceil(count/psize),
            count,
            result
          })
        }
      })
    }
  })
})
module.exports=router;