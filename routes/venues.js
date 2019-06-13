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
router.get("/kws",(req,res)=>{
  var cid=req.query.cid;
  var kws=req.query.kws;
  var pno=req.query.pno;
  var psize=req.query.psize;
  var start=new Date().getTime();
  if(cid===undefined||cid==0){
    var sql=`select vid, vname, vaddress, vpic, city, count(*) as tcount from tours inner join venues using(vid) inner join cities using (cid) where time>=? `;
    var params=[start];
  }else{
    var sql=`select vid, vname, vaddress, vpic, city, count(*) as tcount from tours inner join venues using(vid) inner join cities using (cid) where time>=? and cid=? `;
    var params=[start,cid];
  }
  if(kws!==undefined){
    kws=kws.split(/\s+/);
    var arr=[];
    for(var kw of kws){
      arr.push(` ( vname like '%${kw}%' || vaddress like '%${kw}%' ) `)
    }
    sql += " and "+arr.join(" and ");
  }
  sql+=" group by vid order by tcount desc, time ";
  var sql2=`select count(*) as count from (${sql}) as table1`;
  pool.query(sql2,params,(err,result)=>{
    if(err){
      res.send({code:0, msg:String(err)});
    }else{
      var count=result[0]["count"];
      sql+=" limit ?,?";
      pno=pno||0;
      psize=psize||10;
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
router.get("/details",(req,res)=>{

})
module.exports=router;