//引入express
const express=require('express');
//引入连接池
const pool=require('../pool.js');
//创建路由对象
var router=express.Router();
router.get("/login",function(req,res){
	res.sendFile('/Users/luyan/Desktop/modernsky/public/rightLogin.html');
});

//导出路由
module.exports=router;
// //1.用户登录路由(查询)
// router.post('/login',function(req,res){
// 	//获取post请求的数据
// 	//console.log(req.body);
// 	//验证数据是否为空
//     if(!req.body.phone){
// 		res.send({code:401,msg:'phone required'});
// 		return;
// 	}
// 	if(!req.body.upwd){
// 		res.send({code:402,msg:'upwd required'});
// 		return;
// 	}
// 	//执行sql语句
// 	//查询数据中是否含有用户名和密码相匹配的数据
//     pool.query('SELECT * FROM modernsky_user WHERE phone=? AND upwd=?',[req.body.phone,req.body.upwd],function(err,result){
//         if(err){
// 			throw err;
// 			}
// 			//如果数组中有元素，说明成功，没有元素失败
// 			if(result.length>0){
// 				res.send({code:200,msg:'login suc'});
// 			}else{
// 				res.send({code:404,msg:'login err'});
// 			}
// 		//res.send(result);
// 	});
// 	//res.send('登陆成功');
// });
