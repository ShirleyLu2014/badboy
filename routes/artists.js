const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/hot",(req,res)=>{
  var start=new Date().getTime();
  var sql=`SELECT aid, aname, aphoto, stname, (select count(*) from fans where fans.aid=artists.aid) as fcount, (select count(*) from tours inner join shows using(sid) inner join arshows using(sid) where aid=artists.aid and time>=${start}) as tcount FROM artists inner join styles using(stid) order by tcount desc,fcount desc limit 8`;
  pool.query(sql,[],(err,result)=>{
    if(err){
      res.send({code:0, msg:String(err)})
    }else{
      res.send(result);
    }
  });
})
router.get("/",(req,res)=>{
  var stid=req.query.stid;
  var kws=req.query.kws;
  var pno=req.query.pno;
  var psize=req.query.psize;
  var start=new Date().getTime();
  if(stid===undefined||stid==0){
    var sql=`SELECT aid, aname, aphoto, stname, (select count(*) from fans where fans.aid=artists.aid) as fcount, (select count(*) from tours inner join shows using(sid) inner join arshows using(sid) where aid=artists.aid and time>=${start}) as tcount FROM artists inner join styles using(stid) `;
    var params=[];
  }else{
    var sql=`SELECT aid, aname, aphoto, stname, (select count(*) from fans where fans.aid=artists.aid) as fcount, (select count(*) from tours inner join shows using(sid) inner join arshows using(sid) where aid=artists.aid and time>=${start}) as tcount FROM artists inner join styles using(stid) where stid=? `;
    var params=[stid];
  }
  if(kws!==undefined){
    kws=kws.split(/\s+/);
    var arr=[];
    for(var kw of kws){
      arr.push(` ( aname like '%${kw}%' || stname like '%${kw}%' ) `)
    }
    sql += (params.length==0?" where ":" and ")+arr.join(" and ");
  }
  sql+=" order by tcount desc,fcount desc ";
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
module.exports=router;