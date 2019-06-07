const express=require("express");
const router=express.Router();
const pool=require("../pool");

router.get("/hot",(req,res)=>{
  var sql="SELECT aid, aname, aphoto, count(*) as count FROM fans inner join artists using(aid) group by aid order by count desc,aid desc limit 8";
  pool.query(sql,[],(err,result)=>{
    if(err){
      res.send({code:0, msg:String(err)})
    }else{
      res.send(result);
    }
  });
})
module.exports=router;