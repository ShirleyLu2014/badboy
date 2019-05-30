const express=require('express');
const pool=require('../pool.js');
//创建路由器对象
var router=express.Router();
//添加路由
//1.商品显示
router.get('/list',function(req,res){
	var pno=req.query.pno;
	var count=req.query.count;
	if(!pno){
		pno=1;
	}
	if(!count){
		count=10
	}
	pno=parseInt(pno);
	count=parseInt(count);
	var start=(pno-1)*count;
	pool.query('SELECT * FROM xz_laptop LIMIT ?,?',[start,count],function(err,result){
		if(err){
			throw err;
		}
		res.send(result);
	});
});
//2.商品添加
router.get('/insert',function(req,res){
	var obj=req.query;
	var count=400;
	for(var key in obj){
		count++;
		if(!obj[key]){
			res.send({code:count,msg:key+' '+'required'});
		}
	}
	pool.query('INSERT INTO xz_laptop SET ?',[obj],function(err,result){
		if(err){
			throw err;
		}
	    if(result.affectedRows>0){
			res.send({code:200,msg:'insert suc'});
		}
	});
});
//3.删除商品
router.post('/delete',function(req,res){
	if(!req.body.lid){
		res.send({code:401,msg:'lid required'});
		return;
	}
	pool.query('DELETE FROM xz_laptop WHERE lid=?',[req.body.lid],function(err,result){
		if(err){
			throw err;
		}
		if(result.affectedRows>0){
			console.log('删除成功');
			res.send({code:200,msg:'delete suc'});
		}
	});
});
//4.检索商品
router.get('/detail',function(req,res){
	if(!req.query.lid){
        //res.send(req.query.lid);
		res.send({code:401,msg:'lid required'});
        //console.log(req.query.lid);
		return;
	}
pool.query('SELECT * FROM xz_laptop WHERE lid=?',[req.query.lid],function(err,result){
	if(err){
		throw err;
	}else{
        res.send(result);
	}
});
});
//5.更改商品
router.get('/update',function(req,res){
	var obj=req.query;
	var count=400;
	console.log(req.query);
	for(var key in obj){
		count++;
		if(!obj[key]){
			res.send({code:count,msg:obj[key]+' '+'required'});
		}
	}
    pool.query('UPDATE xz_laptop SET family_id=?,title=?,subtitle=?,price=?,promise=?,spec=? WHERE lid=?',[obj.family_id,obj.title,obj.subtitle,obj.price,obj.promise,obj.spec,obj.lid],function(err,result){
        if(err){
            throw err;
        }
		if(result.affectedRows>0){
			res.send(result);
			console.log('更新成功');
		}
    });
});
//导出路由器
module.exports=router;

