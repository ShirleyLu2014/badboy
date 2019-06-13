const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/hot",(req,res)=>{
  var cid=req.query.cid;
  var sql=`select vid, city, vname, vaddress, vpic, count(*) as tcount from tours inner join venues using(vid) inner join cities using (cid) where time>=(select UNIX_TIMESTAMP(NOW()) * 1000) `;
  var params=[]
  if(cid!==undefined&&cid!=0){
    sql+=` and cid=? `;
    params.push(cid);
  }
  sql+=` group by vid order by tcount desc, time limit 2 `
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
  var kws=req.query.kws;
  var pno=req.query.pno;
  var psize=req.query.psize;
  var start=new Date().getTime();
  var sql=`select vid, vname, vaddress, vpic, city, count(*) as tcount from tours inner join venues using(vid) inner join cities using (cid) where time>=? `;
  var params=[start];
  if(cid!==undefined&&cid!=0){
    sql+=` and cid=? `;
    params.push(cid);
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
          var tasks=[];
          for(var r of result){
            tasks.push(new Promise((function(r){return (open)=>{
              pool.query("select sid,stitle,sphoto,time from tours inner join shows using(sid) where vid=? order by time limit 3 ",[r["vid"]],(err,result)=>{
                if(err){
                  console.log(err);
                }else{
                  r["shows"]=result;
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
});
router.get("/",(req,res)=>{
  var cid=req.query.cid;
  var sql=`select vid, city, vname, vaddress, vpic, count(*) as tcount from tours inner join venues using(vid) inner join cities using (cid) where time>=(select UNIX_TIMESTAMP(NOW()) * 1000) `;
  var params=[];
  if(cid!==undefined&&cid!=0){
    sql+=` and cid=? `;
    params.push(parseInt(cid));
  }
  sql+=` group by vid order by tcount desc, time `
  pool.query(sql,params,(err,result)=>{
    if(err){
      res.send({code:0, msg:String(err)});
    }else{
      res.send(result);
    }
  })
});
router.get("/details",(req,res)=>{
  var vid=req.query.vid;
  if(vid!==undefined&&vid!=0){
    var output={
      venue:{},
    }
    var sql="SELECT * FROM venues inner join cities using(cid) where vid=?";
    pool.query(sql,[vid],(err,result)=>{
      if(err){
        res.send({code:0, msg:String(err)})
      }else{
        output.venue=result[0];
        res.send(output.venue);
      }
    })
  }else{
    res.send({code:0, msg:"未提供现场编号"})
  }
})
module.exports=router;