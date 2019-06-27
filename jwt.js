// 引入模块依赖
const fs = require('fs');
const path = require('path');
const jwt = require('jsonwebtoken');

//生成token
function generateToken(data){
    let created = Math.floor(Date.now() / 1000);
    let cert = fs.readFileSync(path.join(__dirname, './pem/private_key.pem'));//私钥 可以自己生成
    let token = jwt.sign({
        data,
        exp: created + 60 * 30,
    }, cert, {algorithm: 'RS256'});
    return token;
}

// 校验token
function verifyToken(token) {
    let cert = fs.readFileSync(path.join(__dirname, './pem/rsa_public_key.pem'));//公钥 可以自己生成
    let res;
    try {
      console.log(String(cert));
        let result = jwt.verify(token, cert, {algorithms: ['RS256']}) || {};
        let {exp = 0} = result, current = Math.floor(Date.now() / 1000);
        if (current <= exp) {
            res = result.data || {};
        }
    } catch (e) {
        res = e;
    }
    return res;
}

var str=generateToken(1);
console.log(str);
var obj=verifyToken(str);
console.log(obj);

module.exports = { generateToken, verifyToken };