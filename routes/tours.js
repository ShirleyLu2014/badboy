const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/recent",(req,res)=>{
  var cid=req.query.cid;
  if(cid!==undefined&&cid!=0){
    var sql="select tid,sid,vid, stitle, sphoto, city, vname, price, time from tours inner join venues using(vid) inner join shows using(sid) inner join cities using (cid) where cid=? and time>=(select UNIX_TIMESTAMP(NOW()) * 1000) order by time,tid limit 4";
    var params=[cid];
  }else{
    var sql="select tid,sid,vid, stitle, sphoto, city, vname, price, time from tours inner join venues using(vid) inner join shows using(sid) inner join cities using (cid) where time>=(select UNIX_TIMESTAMP(NOW()) * 1000) order by time,tid limit 4";
    var params=[];
  }
  pool.query(sql,params,(err,result)=>{
    if(err){
      res.send({
        code:0,
        msg:String(err)
      });
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
        res.send(result);
      })
    }
  })
})
router.get("/bymonth",(req,res)=>{
  var m=req.query.m;
  var cid=req.query.cid;
  if(m!==undefined&&m>=1&&m<=12){
    var y=new Date().getFullYear();
    var start=new Date(`${y}/${m}/1`).getTime();
    var end=new Date(`${y}/${m}/${
      /4|6|9|11/.test(m)?30:
      /1|3|5|7|8|10|12/.test(m)?31:
      y%4==0&&y%100!=0?29:28
    }`).getTime();
    if(cid!==undefined&&cid!=0){
      var sql=`SELECT count(*) as count, from_unixtime(time/1000,"%d") as date FROM tours inner join venues using(vid) where cid=? and time>=? and time<=? group by date order by date`;
      var params=[cid,start,end];
    }else{
      var sql=`SELECT count(*) as count, from_unixtime(time/1000,"%d") as date FROM tours where time>=? and time<=? group by date order by date`;
      var params=[start,end];
    }
    pool.query(sql,params,(err,result)=>{
      if(err){
        res.send({code:0, msg:String(err)});
      }else{
        res.send(result);
      }
    })
  }else{
    res.send({code:0, msg:"未指定月份！"})
  }
});
router.get("/hot",(req,res)=>{
  var cid=req.query.cid;
  var start=new Date().getTime();
  var end=start+7*24*3600*1000;
  getHot(res,start,end,cid);
});
function getHot(res,start, end, cid){
  if(cid===undefined){
    var sql=`select tid,sid,vid, stitle, sphoto, city, vname, price, time, (select count(*) from wants where wants.sid=tours.sid) as wants from tours inner join venues using(vid) inner join shows using(sid) inner join cities using (cid) where time>=? and time<=? order by wants desc limit 4`;
    var params=[start,end];
  }else{
    var sql=`select tid,sid,vid, stitle, sphoto, city, vname, price, time, (select count(*) from wants where wants.sid=tours.sid) as wants from tours inner join venues using(vid) inner join shows using(sid) inner join cities using (cid) where cid=? and time>=? and time<=? order by wants desc limit 4`;
    var params=[cid, start, end];
  }
  pool.query(sql,params,(err,result)=>{
    if(err){
      res.send({code:0, msg:String(err)});
    }else{
      if(result.length==4){
        result.sort((a,b)=>a["time"]-b["time"]);
        res.send(result);
      }else{
        if(end-start<=12*7*24*3600*1000){
          arguments.callee(res,start, end+7*24*3600*1000,cid)
        }else{
          res.send(result);
        }
      }
    }
  })
}
router.get("/list",(req,res)=>{
  //cid vid sid starttime endtime
  var {cid,vid,sid,starttime,endtime,pno,psize}=req.query;
  var conds=[];
  var params=[];
  if(cid!==undefined&&cid!=0){
    conds.push(" cid=? ");
    params.push(cid);
  }
  if(vid!==undefined&&vid!=0){
    conds.push(" vid=? ");
    params.push(vid);
  }
  if(sid!==undefined&&sid!=0){
    conds.push(" sid=? ");
    params.push(sid);
  }
  if(starttime!==undefined&&starttime!=0){
    conds.push(" time>=? ");
    params.push(starttime);
  }else{
    conds.push(" time>=? ");
    params.push(new Date().getTime());
  }
  if(endtime!==undefined&&endtime!=0){
    conds.push(" time<=? ");
    params.push(endtime);
  }
  pno=pno||0;
  psize=psize||10;
  params.push(pno*psize,psize);
  var sql="select * from tours inner join venues using(vid) inner join shows using(sid) ";
  var where=conds.length==0?"":` where ${conds.join(" and ")}`;
  sql+=where;
  sql+=" order by time ";
  sql+=` limit ?,? `;
  console.log(sql);
  console.log(params);
  pool.query(sql,params,(err,result)=>{
    if(err){
      res.send({code:0, msg:String(err)})
    }else{
      res.send({
        pno,
        psize,
        pcount:Math.ceil(result.length/psize),
        result
      })
    }
  });
})
module.exports=router;