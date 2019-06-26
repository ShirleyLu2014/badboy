<template>
  <header>
    <div id="header1">
      <!--右侧logo-->
      <div class="logo">
        <router-link to="/">
          <img src="/images/index/logo.png" alt="badboy" title="badboy">
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
            <router-link to="/lives">演出</router-link>
          </li>
          <li>
            <router-link to="/venues">音乐现场</router-link>
          </li>
          <li>
            <router-link to="/artists">音乐人</router-link>
          </li>
          <li><a href="">音乐人服务</a></li>
          <li><a href="">音乐周边</a></li>
        </ul>
      </div>
      <div class="user"><!--右边登录 注册 搜索-->
        <ul>
          <li>
            <a href="javascript:;" @click="open()">登录</a>
          </li>
          <li>
            <a href="javascript:;">注册</a>
          </li>
          <li>
            <input type="text" placeholder="搜索演出">
          </li>
          <li>
            <a href="">
                <img src="images/index/search.png" alt="">
            </a>
          </li>
        </ul>
      </div>
    </div>
    <div class="login" v-show="show">
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
                    <button type="button" class="loginBtn" id="loginBtn" @click="login">登 录</button>
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
      <a href="javacript:;" class="close" @click="close()"></a>
    </div>
  </header>
</template>
<script>
export default {
  data(){
    return {
      show:false
    }
  },
  methods:{
    open(){
      this.show=true;
    },
    close(){
      this.show=false;
    },
    login(){
      console.log(this.$route.path);
    }
  }
}
</script>

<style scoped>
  @import "../../public/css/header.css"
</style>
