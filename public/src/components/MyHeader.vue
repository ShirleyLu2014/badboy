<template>
  <header>
    <div id="header1">
      <!--右侧logo-->
      <div class="logo">
        <router-link to="/">
          <img src="image/index/logo.png" alt="badboy" title="badboy">
        </router-link>
      </div>
      <!--城市切换-->
      <div class="city">
        <div class="city-title">
          全国站
        </div>
        <div class="city-select">
            <a href="" class="size">
              <i></i> 
              切换城市</a>
            <div class="over" style="display:none">
              <ul>
                <li><a href="">全国</a></li>
                <li><a href="">北京</a></li>
                <li><a href="">上海</a></li>
                <li><a href="">广州</a></li>
                <li><a href="">成都</a></li>
                <li><a href="">深圳</a></li>
                <li><a href="">杭州</a></li>
                <li><a href="">武汉</a></li>
                <li><a href="">重庆</a></li>
                <li><a href="">西安</a></li>
                <li><a href="">长沙</a></li>
                <li><a href="">南京</a></li>
              </ul>
            </div>
        </div>
      </div>
      <div class="list">
        <ul>
          <li>
            <!--<a href="live.html">演出</a>-->
            <router-link to="/Lives">演出</router-link>
          </li>
          <li>
            <router-link to="/Venues">音乐现场</router-link>
          </li>
          <li>
            <router-link to="Artists">音乐人</router-link>
          </li>
          <li><a href="">音乐人服务</a></li>
          <li><a href="">音乐周边</a></li>
        </ul>
      </div>
      <div class="user"><!--右边登录 注册 搜索-->
        <ul>
          <li>
            <a href="login.html">登录</a>
          </li>
          <li>
            <a href="register.html">注册</a>
          </li>
          <li>
            <input type="text" placeholder="请输入搜索内容">
          </li>
          <li>
            <a href="">
                <img src="image/index/search.png" alt="">
            </a>
          </li>
        </ul>
      </div>
    </div>
    <div class="login">
      <div class="loginBox">
        <div class="loginForm">
          <div class="loginTitle">登录badboy</div>
          <form action="" autocomplete="off" novalidate="novalidate" class="tableForm">
            <table cellpadding="0" cellspacing="0" border="0">
              <tbody>
                <tr>
                  <td>
                    <input type="text" name="uname" id="uname" required="true" placeholder="请输入手机号或邮箱" class="inputStyle error">
                    <label for="uname" class="labelError">请输入手机号</label>
                  </td>
                </tr>
                <tr>
                  <td>
                    <input type="password" name="upwd" class="inputStyle error" id="upwd" required="true" placeholder="请输入密码" autocomplete="off">
                    <label for="upwd" generated="true" class="labelError">请输入密码！</label>
                  </td>
                </tr>
                <tr>
                  <td>
                    <label class="rememberLabel">
                      <input type="checkbox" name="remember">下次自动登录
                    </label>
                  </td>
                </tr>
                <tr>
                  <td>
                    <button type="submit" class="loginBtn" id="loginBtn">登 录</button>
                  </td>
                </tr>
                <tr>
                  <td class="forget">
                    <a href="" class="forgetUpwd">忘记密码？</a>
                    <span class="rememberLabel">
                      还没有badboy账号<a href="">点击注册</a>
                    </span>
                  </td>
                </tr>
              </tbody>
            </table>
          </form>
          <div class="otherLogin">
            <a href="" class="qq"></a>
            <a href="" class="sina"></a>
            <a href="" class="wechat"></a>
            <a href="" class="douban"></a>
          </div>
        </div>
      </div>
      <a href="javacript:;" class="close"></a>
    </div>
  </header>
</template>
<script>
export default {
  
}
</script>

<style scoped>
header{
  font-family:Tahoma, "Microsoft Yahei", 微软雅黑, 宋体, 黑体, Arial, Helvetica, STHeiti;
  width:100%;
  position: fixed;
  top:0;
  z-index:990;
  background-color:rgba(23, 163, 184, 0.932);
}
#header1{
  width:1200px;
  height:60px;
  line-height:60px;
  margin:0 auto;
}
#header1 a{
  display:inline-block;
  text-decoration:none;
  color:#fff;
}
#header1 a:hover{
  color:#f54747;
}
#header1>div{
  height:60px;
  float:left;
  line-height:60px;
}
#header1>div::after{
  content: "";
  display:block;
  clear: both;
} 
.logo>a{
  display:inline-block;
  height:60px;
  line-height:60px;
}
.logo>a>img{
  align-items: center;
  height:40px;
}
.city-title{
  color:#fff;
}
.city{
  margin-left:40px;
  width:150px;
}
.city>div{
  float:left;
}
.size{
  font-size:14px;
}
.city>div.city-select{
  margin-left:10px;
}
.city>div.city-select>a>i{
  /* position:absolute; */
  display: inline-block;
  background-image: url("/image/index/icon.png");
  background-position: -73px -901px;
  width: 12px;
  height: 15px;
}
.city-select>.over{
  display:none;
  position:absolute;
  top:45px;
  width:0px;
  height:0px;
  background-color: #fff;
  /* border-top:1px solid red; */
  transition:1.5s;
}
.city-select:hover>.over{
  display:block;
  height:120px;
  width:412px;
  border:1px solid red;
}
.city-select>.over>ul>li>a{
  color:#2d2d2d;
}
#header1>.list{
  width:420;
  margin-left:20px;
}
ul{
  list-style:none;
  display:flex;
}
.list>ul>li>a{
  margin-left:10px;
  margin-right:10px;
  width:80px;
  text-align:center;
}
.list>ul>li:first-child>a{
  margin:0;
}
#header1>div.user{
  float:right;
}
.user>ul>li{
  margin-left:10px;
}
.user>ul>li>input{
  padding-left:10px;
  outline:none;
  width:180px;
  height:30px;
  border:0;
  border-radius:20px;
  font-size:12px;
}
/* 登陆框 */
.login{
  position: fixed;;
  width: 497px;
  height:auto;
  z-index:999;
  top: 50%;
  left: 50%;
  transform: translateX(-50%) translateY(-50%);
  display:block;
  background: #F8F8F8;
  padding:15px;
  display:none;
}
.loginBox{
  width:456px;
  height:auto;
  padding:30px 60px;
  margin:0;
}
.close{
  display:inline-block;
  width:15px;
  height:20px;
  position: absolute;
  top: 10px;
  right: 10px;
  cursor: pointer;
  /* z-index: 8040; */
  background: url("/image/index/close.png") no-repeat;
}
.loginTitle{
  width:332px;
  height:36px;
  font-size: 24px;
  text-align: center;
  color: #666;
  margin-bottom: 10px;
}
.tableForm{
  width:332px;
  height:auto;
}
.tableForm>table{
  width:100%;
}
.tableForm>table>tbody>tr>td{
  padding:10px 0;
}
.inputStyle{
  height:40px;
  width:100%;
  outline:0;
  border:0;
  padding-left:40px;
  background:url("/image/index/icon.png") 10px -593px no-repeat;
  border:1px solid #00f;
  border-radius:3px;
  border:1px solid rgba(23, 163, 184, 0.932);
}
.labelError{
  color:#e72f2f;
  font-size:13px;
  margin-top:5px;
  display:none;
}
#upwd.inputStyle{
  background-position:10px -633px;
}
.rememberLabel{
  vertical-align: middle;
  float:right;
  color:#999;
  margin:0;
}
.loginBtn{
  width: 100%;
  font-size: 16px;
  font-weight: bold;
  padding: 0;
  vertical-align:middele;
  text-align:center;
  border-radius:3px;
  cursor: pointer;
  outline:0;
  height:40px;
  background:#e72f2f;
  color:#fff;
}
.forget a{
  text-decoration:none;
  color:rgba(23, 163, 184, 0.932);
  outline:0;
}
.forget a:hover{
  color:#e72f2f;
}
.otherLogin{
  text-align:center;
  margin-top:10px;
}
.otherLogin>a{
  display: inline-block;
  width: 47px;
  height: 47px;
  background: url("/image/index/icon.png") no-repeat;
  margin: 0 10px;
}
.qq{
  background-position: -95px -694px !important;
}
.sina{
  background-position: -48px -695px !important;
}
.wechat{
  background-position: -1px -695px !important;
}
.douban{
  background-position: -142px -695px !important;
}
</style>
