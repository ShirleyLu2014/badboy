<template>
  <div id="demo" class="carousel">
      <!--1.轮播图片-->
    <div class="carousel-inner">
      <div class="carousel-item active">
        <a href="">
          <img src="/images/carousel_item/carousel-1.jpg"/>
        </a>
        <a href="">《Ghost Mane》| STARR J与恶魔一起住在Dark Castle")</a>
      </div>
      <div class="carousel-item">
        <a href="">
          <img src="/images/carousel_item/carousel-2.jpg"/>
        </a>
        <a href="">赐我们一首比“情歌而已”更值得唱的歌 声音碎片第三支预热单曲《送流水》首发</a>
      </div>
      <div class="carousel-item">
        <a href="">
          <img src="/images/carousel_item/carousel-3.jpg"/>
        </a>
        <a href="">我眼里只有一个3号他永远昂着头 | 黄旭全新单曲《低位》致敬韦德</a>
      </div>
      <div class="carousel-item">
        <a href="">
          <img src="/images/carousel_item/carousel-4.jpg"/>
        </a>
        <a href="">彭坦春晓携女率性玩音乐 Modern Sky Kids厂牌汇聚亲子市场新能量</a>
      </div>
      <div class="carousel-item">
        <a href="">
          <img src="/images/carousel_item/carousel-5.jpg"/>
        </a>
        <a href="">曾轶可另类创作再出击 全新单曲《Truly》真心上线</a>
      </div>
      <div class="carousel-item">
        <a href="">
          <img src="/images/carousel_item/carousel-6.jpg"/>
        </a>
        <a href="">16层新专辑先行单曲上线，精巧器乐铺排搭建诡异《失落园》</a>
      </div>
      <div class="carousel-item">
        <a href="">
          <img src="/images/carousel_item/carousel-7.jpg"/>
        </a>
        <a href="">标题如歌” | OBi《爱你》温柔上线</a>
      </div>
      <div class="carousel-item">
        <a href="">
          <img src="/images/carousel_item/carousel-8.jpg"/>
        </a>
        <a href="">李大奔的硬核浪漫：如果不是你，随便谁都一样</a>
      </div>
    </div>
    <!--2.左右箭头-->
    <a data-slide="next" href="#demo" class="carousel-control-next">
        <span class="carousel-control-next-icon"></span>
    </a>
    <a data-slide="prev" href="#demo" class="carousel-control-prev">
        <span class="carousel-control-prev-icon"></span>
    </a>
    <!--3.轮播指示符-->
    <ul class="carousel-indicators">
        <li data-target="#demo" data-slide-to="0" class="active"></li>
        <li data-target="#demo" data-slide-to="1"></li>
        <li data-target="#demo" data-slide-to="2"></li>
        <li data-target="#demo" data-slide-to="3"></li>
        <li data-target="#demo" data-slide-to="4"></li>
        <li data-target="#demo" data-slide-to="5"></li>
        <li data-target="#demo" data-slide-to="6"></li>
        <li data-target="#demo" data-slide-to="7"></li>
    </ul>
  </div>
</template>
<script>
export default {
  
}
</script>
<style scoped>
/* section>#carousel>.carousel-inner>div>a{
    display:block;
  } */
  section>.carousel>{
    margin-top:60px;
  }
  section>.carousel:after{
    content:"";
    display:block;
    clear:both;
  }
  section>.carousel>.carousel-inner>.carousel-item>a>img{
    width:100%;
  }
  section>.carousel>.carousel-inner>.carousel-item>a:last-child{
    display:block;
    width:100%;
    height:50px;
    color:#fff;
    text-align:center;
    font-size:15px;
    line-height:50px;
    text-decoration:none;
    background-color:#f68cc6;
  }
  section>.carousel>.carousel-inner>.carousel-item:nth-child(2)>a:last-child{
    background-color:#fa9c77;
  }
  section>.carousel>.carousel-inner>.carousel-item:nth-child(3)>a:last-child{
    background-color:#ba4b5d;
  }
  section>.carousel>.carousel-inner>.carousel-item:nth-child(4)>a:last-child{
    background-color:#02c0f0f5;
  }
  section>.carousel>.carousel-inner>.carousel-item:nth-child(5)>a:last-child{
    background-color:#bc76dd;
  }
  section>.carousel>.carousel-inner>.carousel-item:nth-child(6)>a:last-child{
    background-color:#539788;
  }
  section>.carousel>.carousel-inner>.carousel-item:nth-child(7)>a:last-child{
    background-color:#c67ee79b;
  }
  section>.carousel>.carousel-inner>.carousel-item:nth-child(8)>a:last-child{
    background-color:#2f49079b;
  }

  /*重写指示符的样式*/
  .carousel-indicators li{
    width:15px;height:15px;
    background-color:#fff;
    margin-left:6px;
    margin-right:6px;
    border-radius: 50%;
    top:60px;
  }
  .carousel-indicators>li:hover, .carousel-indicators>li.hover{
    transform:scale(1.3)
  }
  .carousel-indicators>li:first-child{
    background-color:#f68cc6;
  }
  .carousel-indicators>li:nth-child(2){
    background-color:#fa9c77;
  }
  .carousel-indicators>li:nth-child(3){
    background-color:#ba4b5d;
  }
  .carousel-indicators>li:nth-child(4){
    background-color:#02c0f0f5;
  }
  .carousel-indicators>li:nth-child(5){
    background-color:#bc76dd;
  }
  .carousel-indicators>li:nth-child(6){
    background-color:#539788;
  }
  .carousel-indicators>li:nth-child(7){
    background-color:#c67ee79b;
  }
  .carousel-indicators>li:nth-child(8){
    background-color:#2f49079b;
  }
  /*重写左右箭头的样式*/
  .carousel-control-prev,
  .carousel-control-next{
    width:40px;height:100px;
    /* background-color:rgba(95, 95, 92, 0.3); */
    top:20%;
    margin-left:40px;
    border-radius:0.25rem;
  }
  .carousel-control-next{
    margin-right:40px;
  }
</style>


