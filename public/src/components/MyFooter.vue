<template>
  <footer>
      <div class="rainbow">
        <div class="green"></div>
        <div class="grape"></div>
        <div class="red"></div>
        <div class="orange"></div>
        <div class="yellow"></div>
        <!--<div class="green"></div>-->
      </div>
      <div class="map">
        <div class="code">
          <img src="images/footer/ewm.png" alt="">
        </div>
        <div class="contact">
          <div class="con_title">
            <img src="images/footer/contact.png" alt="">
          </div>
          <div class="con_addr">
            <ul>
              <li><img src="images/footer/address.png" alt=""></li>
              <li><span>北京市朝阳区广渠路1号创1958园区3-12 badboy</span></li>
            </ul>  
          </div>
          <div class="con_tel">
            <ul>
              <li><img src="images/footer/tel.png" alt=""></li>
              <li><span>电话：（8610）010-50972785</span></li>
              <li><span>客服咨询热线：4001-680-650</span></li>
            </ul>
            <span class="span_pri">唱片发行：（8610）010-50972785-6012</span>
            <span class="span_last">音乐节项目合作：（8610）010-50972785-6013</span>
          </div>
        </div>
        <div class="about">
          <div class="about_title">
            <img src="images/footer/about.png" alt="">
          </div>
          <div>
            <ul>
              <li><a href="">关于badboy</a></li>
              <li><a href="">联系我们</a></li>
            </ul>
          </div>
          <div>
            <ul>
              <li><a href="">关于badboy</a></li>
              <li><a href="">联系我们</a></li>
            </ul>
          </div>
        </div>
      </div>
      <div class="copy">
        <p>©1997-2014　<span style="color:#9fdaf6">badboy</span> 版权所有　<span style="color:#9fdaf6">badboy</span> Entertainment CO.,LTD.　All Copyright Reserved　京ICP备14018992号-1</p>
      </div>
  </footer>
</template>
<script>
export default {
  
}
</script>
<style scoped>
  footer{
  width:100%;
}
footer>div:first-child{
  width:100%;
  display:flex;
}
.green{
  width:20%;
  height:8px;
  background:#1bbc9d;
}
.grape{
  width:20%;
  height:8px;
  background:#9c59b8;
}
.red{
  width:20%;
  height:8px;
  background:#d63f58;
}
.orange{
  width:20%;
  height:8px;
  background:#2191d1;
}
.yellow{
  width:20%;
  height:8px;
  background:#e77e23;
}
/*.yellow{
  width:20%;
  height:8px;
  background:#f1c40f;
}*/
/*.green{
  width:20%;
  height:8px;
  background:#1bbc9d;
}*/
.map{
  width:1200px;
  padding:50px;
  padding-left:80px;
  /* border:1px solid #000; */
  display:flex;
  justify-content: space-around;
  margin:0 auto;
}
.map>.code{
  width:300px;
}
.contact{
  width:500px;
  padding-left:70px;
  padding-top:15px;
  padding-bottom:15px;
  border-left:1px solid #d2d2d2;
  border-right:1px solid #d2d2d2;
  text-align:left;
}
.con_addr{
  margin-top:10px;
}
.contact ul{
  list-style:none;
  display:flex;
  padding-left:0;
}
.con_addr img{
  width:30px;
  height:30px;
}
.con_tel img{
  width:30px;
  height:30px;
}
.con_tel ul{
  margin-bottom:0;
}
.contact span{
  color:hsl(0, 0%, 11%);
  margin-left:20px;
  font-size:12px;
}
.con_tel .span_pri{
  display:block;
  margin-top:0px;
  margin-left:50px;
}
.con_tel .span_last{
  display:block;
  margin-left:50px;
}
.about{
  width:400px;
  padding-left:60px;
  padding-top:15px;
}
.about ul{
  padding:0;
  list-style:none;
  display:flex;
  justify-content: space-between;
}
.about ul a{
  text-decoration:none;
  color: #1b1b1b;
  font-size: 14px;
}
.copy{
  margin-bottom:0;
  width:100%;
  height:50px;
  background:#1b1b1b;
}
.copy>p{
  color:#555;
  font-size:12px;
  line-height:50px;
  text-align:center;
  margin:0;
}
</style>

