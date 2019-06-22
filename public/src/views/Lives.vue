<template>
<section>
    <div id="live">
      <!-- 大标题 -->
      <div class="title">
        <ul>
          <li>
            <a href="Live.html">
              <img src="images/index/title_shows.png" alt="">
            </a>
          </li>
          <!-- <li>
            <a href="Live.html">
              more >
            </a>
          </li> -->
        </ul>
      </div>
      <!-- 演出城市 -->
      <div class="liveCity">
        <span>演出城市</span>
        <div>
          <ul>
            <li>
              <a href="">全国</a>
            </li>
            <li>
              <a href="">北京</a>
            </li>
            <li>
              <a href="">上海</a>
            </li>
            <li>
              <a href="">广州</a>
            </li>
            <li>
              <a href="">成都</a>
            </li>
            <li>
              <a href="">深圳</a>
            </li>
            <li>
              <a href="">杭州</a>
            </li>
            <li>
              <a href="">武汉</a>
            </li>
            <li>
              <a href="">西安</a>
            </li>
            <li>
              <a href="">重庆</a>
            </li>
            <li>
              <a href="">长沙</a>
            </li>
            <li>
              <a href="">南京</a>
            </li>
          </ul>
        </div>
        <span>
          <a href="">展开</a> 
        </span>
      </div>
      <!-- 演出现场 -->
      <div class="liveHouse">
          <span>音乐现场</span>
          <div>
            <ul>
              <li>
                <a href="">全国</a>
              </li>
              <li>
                <a href="">蘑菇空间</a>
              </li>
              <li>
                <a href="">PINKMOON.樂暮</a>
              </li>
              <li>
                <a href="">MAO Livehouse北京</a>
              </li>
              <li>
                <a href="">疆进酒·OMNI SPACE</a>
              </li>
              <li>
                <a href="">上海 MAO Livehouse</a>
              </li>
              <li>
                <a href="">育音堂音乐公园</a>
              </li>
              <li>
                <a href="">上海 MODERNSKY LAB</a>
              </li>
              <li>
                <a href="">育音堂</a>
              </li>
              <li>
                <a href="">MAO Livehouse广州</a>
              </li>
              <li>
                <a href="">TU凸空间</a>
              </li>
              <li>
                <a href="">SDlivehouse</a>
              </li>
            </ul>
          </div>
          <span>
            <a href="">展开</a> 
          </span>
      </div>
      <!-- 演出时间 -->
      <div class="liveTime">
        <span>演出时间</span>
        <div>
          <ul>
            <li>
              <a href="">全部</a>
            </li>
            <li>
              <a href="">今天</a>
            </li>
            <li>
              <a href="">最近一周内</a>
            </li>
            <li>
              <a href="">下周内</a>
            </li>
            <li>
              <a href="">最近一个月</a>
            </li>
            <li>
              <input type="date" placeholder="">
            </li>
            <li>
              到
            </li>
            <li>
              <input type="date" placeholder="">
            </li>
            <li>
              <a href="">确定</a>
            </li>
          </ul>
        </div>
      </div>
      <!-- 演出风格 -->
      <div class="liveStyle">
        <span>演出风格</span>
        <div>
          <ul>
            <li>
              <a href="">全部</a>
            </li>
            <li>
              <a href="">摇滚</a>
            </li>
            <li>
              <a href="">后摇滚</a>
            </li>
            <li>
              <a href="">流行</a>
            </li>
            <li>
              <a href="">朋克</a>
            </li>
            <li>
              <a href="">后朋克</a>
            </li>
            <li>
              <a href="">民谣</a>
            </li>
            <li>
              <a href="">电子</a>
            </li>
            <li>
              <a href="">独立</a>
            </li>
            <li>
              <a href="">Disco</a>
            </li>
            <li>
              <a href="">金属</a>
            </li>
            <li>
              <a href="">世界音乐</a>
            </li>
          </ul>
        </div>
      </div>
      <!-- 演出列表 -->
      <div class="liveList">
        <ul>
          <li v-for="(t,i) of lives_list" :key="i">
            <router-link :to="`/live_details/${t.tid}`">
              <div>
                <img :src="t.sphoto" alt="">
              </div>
              <p class="gTitle">{{t.stitle}}--{{t.city}}站</p>
              <p class="gName">艺人：{{t.artists}}</p>
              <p class="gPrice">
                价格：<b>¥{{t.price.toFixed(2)}}</b> 
              </p>
              <p class="gTime">时间：{{new Date(t.time).toLocaleString()}}</p>
              <p class="gPlace">
                <span></span>
                [{{t.city}}]{{t.vname}}
              </p>
            </router-link>
          </li>
          <!--<li>
              <a href="">
                <div>
                  <img src="images/live/nlive01.jpg" alt="">
                </div>
                <p class="gTitle">【聚橙】世界经典法语音乐剧《罗密欧与朱丽叶》--北京站</p>
                <p class="gName">艺人：音乐剧《罗密欧与朱丽叶》剧组</p>
                <p class="gPrice">
                  价格：<b>¥480-1180</b> 
                </p>
                <p class="gTime">时间：2019/06/15 14:30</p>
                <p class="gPlace">
                  <span></span>
                  [北京]北京 世纪剧院
                </p>
              </a>
          </li>
          <li>
            <a href="">
              <div>
                <img src="images/live/nlive01.jpg" alt="">
              </div>
              <p class="gTitle">【聚橙】世界经典法语音乐剧《罗密欧与朱丽叶》--北京站</p>
              <p class="gName">艺人：音乐剧《罗密欧与朱丽叶》剧组</p>
              <p class="gPrice">
                价格：<b>¥480-1180</b> 
              </p>
              <p class="gTime">时间：2019/06/15 14:30</p>
              <p class="gPlace">
                <span></span>
                [北京]北京 世纪剧院
              </p>
            </a>
          </li>
          <li>
            <a href="">
              <div>
                <img src="images/live/nlive01.jpg" alt="">
              </div>
              <p class="gTitle">【聚橙】世界经典法语音乐剧《罗密欧与朱丽叶》--北京站</p>
              <p class="gName">艺人：音乐剧《罗密欧与朱丽叶》剧组</p>
              <p class="gPrice">
                价格：<b>¥480-1180</b> 
              </p>
              <p class="gTime">时间：2019/06/15 14:30</p>
              <p class="gPlace">
                <span></span>
                [北京]北京 世纪剧院
              </p>
            </a>
          </li>
          <li>
            <a href="">
              <div>
                <img src="images/live/nlive01.jpg" alt="">
              </div>
              <p class="gTitle">【聚橙】世界经典法语音乐剧《罗密欧与朱丽叶》--北京站</p>
              <p class="gName">艺人：音乐剧《罗密欧与朱丽叶》剧组</p>
              <p class="gPrice">
                价格：<b>¥480-1180</b> 
              </p>
              <p class="gTime">时间：2019/06/15 14:30</p>
              <p class="gPlace">
                <span></span>
                [北京]北京 世纪剧院
              </p>
            </a>
          </li>
          <li>
            <a href="">
              <div>
                <img src="images/live/nlive01.jpg" alt="">
              </div>
              <p class="gTitle">【聚橙】世界经典法语音乐剧《罗密欧与朱丽叶》--北京站</p>
              <p class="gName">艺人：音乐剧《罗密欧与朱丽叶》剧组</p>
              <p class="gPrice">
                价格：<b>¥480-1180</b> 
              </p>
              <p class="gTime">时间：2019/06/15 14:30</p>
              <p class="gPlace">
                <span></span>
                [北京]北京 世纪剧院
              </p>
            </a>
          </li>
          <li>
            <a href="">
              <div>
                <img src="images/live/nlive01.jpg" alt="">
              </div>
              <p class="gTitle">【聚橙】世界经典法语音乐剧《罗密欧与朱丽叶》--北京站</p>
              <p class="gName">艺人：音乐剧《罗密欧与朱丽叶》剧组</p>
              <p class="gPrice">
                价格：<b>¥480-1180</b> 
              </p>
              <p class="gTime">时间：2019/06/15 14:30</p>
              <p class="gPlace">
                <span></span>
                [北京]北京 世纪剧院
              </p>
            </a>
          </li>
          <li>
            <a href="">
              <div>
                <img src="images/live/nlive01.jpg" alt="">
              </div>
              <p class="gTitle">【聚橙】世界经典法语音乐剧《罗密欧与朱丽叶》--北京站</p>
              <p class="gName">艺人：音乐剧《罗密欧与朱丽叶》剧组</p>
              <p class="gPrice">
                价格：<b>¥480-1180</b> 
              </p>
              <p class="gTime">时间：2019/06/15 14:30</p>
              <p class="gPlace">
                <span></span>
                [北京]北京 世纪剧院
              </p>
            </a>
          </li>
          <li>
            <a href="">
              <div>
                <img src="images/live/nlive01.jpg" alt="">
              </div>
              <p class="gTitle">【聚橙】世界经典法语音乐剧《罗密欧与朱丽叶》--北京站</p>
              <p class="gName">艺人：音乐剧《罗密欧与朱丽叶》剧组</p>
              <p class="gPrice">
                价格：<b>¥480-1180</b> 
              </p>
              <p class="gTime">时间：2019/06/15 14:30</p>
              <p class="gPlace">
                <span></span>
                [北京]北京 世纪剧院
              </p>
            </a>
          </li>
          <li>
            <a href="">
              <div>
                <img src="images/live/nlive01.jpg" alt="">
              </div>
              <p class="gTitle">【聚橙】世界经典法语音乐剧《罗密欧与朱丽叶》--北京站</p>
              <p class="gName">艺人：音乐剧《罗密欧与朱丽叶》剧组</p>
              <p class="gPrice">
                价格：<b>¥480-1180</b> 
              </p>
              <p class="gTime">时间：2019/06/15 14:30</p>
              <p class="gPlace">
                <span></span>
                [北京]北京 世纪剧院
              </p>
            </a>
          </li>
          <li>
            <a href="">
              <div>
                <img src="images/live/nlive01.jpg" alt="">
              </div>
              <p class="gTitle">【聚橙】世界经典法语音乐剧《罗密欧与朱丽叶》--北京站</p>
              <p class="gName">艺人：音乐剧《罗密欧与朱丽叶》剧组</p>
              <p class="gPrice">
                价格：<b>¥480-1180</b> 
              </p>
              <p class="gTime">时间：2019/06/15 14:30</p>
              <p class="gPlace">
                <span></span>
                [北京]北京 世纪剧院
              </p>
            </a>
          </li>
          <li>
            <a href="">
              <div>
                <img src="images/live/nlive01.jpg" alt="">
              </div>
              <p class="gTitle">【聚橙】世界经典法语音乐剧《罗密欧与朱丽叶》--北京站</p>
              <p class="gName">艺人：音乐剧《罗密欧与朱丽叶》剧组</p>
              <p class="gPrice">
                价格：<b>¥480-1180</b> 
              </p>
              <p class="gTime">时间：2019/06/15 14:30</p>
              <p class="gPlace">
                <span></span>
                [北京]北京 世纪剧院
              </p>
            </a>
          </li>
          <li>
            <a href="">
              <div>
                <img src="images/live/nlive01.jpg" alt="">
              </div>
              <p class="gTitle">【聚橙】世界经典法语音乐剧《罗密欧与朱丽叶》--北京站</p>
              <p class="gName">艺人：音乐剧《罗密欧与朱丽叶》剧组</p>
              <p class="gPrice">
                价格：<b>¥480-1180</b> 
              </p>
              <p class="gTime">时间：2019/06/15 14:30</p>
              <p class="gPlace">
                <span></span>
                [北京]北京 世纪剧院
              </p>
            </a>
          </li>
          <li>
            <a href="">
              <div>
                <img src="images/live/nlive01.jpg" alt="">
              </div>
              <p class="gTitle">【聚橙】世界经典法语音乐剧《罗密欧与朱丽叶》--北京站</p>
              <p class="gName">艺人：音乐剧《罗密欧与朱丽叶》剧组</p>
              <p class="gPrice">
                价格：<b>¥480-1180</b> 
              </p>
              <p class="gTime">时间：2019/06/15 14:30</p>
              <p class="gPlace">
                <span></span>
                [北京]北京 世纪剧院
              </p>
            </a>
          </li>
          <li>
            <a href="">
              <div>
                <img src="images/live/nlive01.jpg" alt="">
              </div>
              <p class="gTitle">【聚橙】世界经典法语音乐剧《罗密欧与朱丽叶》--北京站</p>
              <p class="gName">艺人：音乐剧《罗密欧与朱丽叶》剧组</p>
              <p class="gPrice">
                价格：<b>¥480-1180</b> 
              </p>
              <p class="gTime">时间：2019/06/15 14:30</p>
              <p class="gPlace">
                <span></span>
                [北京]北京 世纪剧院
              </p>
            </a>
          </li>
          <li>
            <a href="">
              <div>
                <img src="images/live/nlive01.jpg" alt="">
              </div>
              <p class="gTitle">【聚橙】世界经典法语音乐剧《罗密欧与朱丽叶》--北京站</p>
              <p class="gName">艺人：音乐剧《罗密欧与朱丽叶》剧组</p>
              <p class="gPrice">
                价格：<b>¥480-1180</b> 
              </p>
              <p class="gTime">时间：2019/06/15 14:30</p>
              <p class="gPlace">
                <span></span>
                [北京]北京 世纪剧院
              </p>
            </a>
          </li>
          <li>
            <a href="">
              <div>
                <img src="images/live/nlive01.jpg" alt="">
              </div>
              <p class="gTitle">【聚橙】世界经典法语音乐剧《罗密欧与朱丽叶》--北京站</p>
              <p class="gName">艺人：音乐剧《罗密欧与朱丽叶》剧组</p>
              <p class="gPrice">
                价格：<b>¥480-1180</b> 
              </p>
              <p class="gTime">时间：2019/06/15 14:30</p>
              <p class="gPlace">
                <span></span>
                [北京]北京 世纪剧院
              </p>
            </a>
          </li>
          <li>
            <a href="">
              <div>
                <img src="images/live/nlive01.jpg" alt="">
              </div>
              <p class="gTitle">【聚橙】世界经典法语音乐剧《罗密欧与朱丽叶》--北京站</p>
              <p class="gName">艺人：音乐剧《罗密欧与朱丽叶》剧组</p>
              <p class="gPrice">
                价格：<b>¥480-1180</b> 
              </p>
              <p class="gTime">时间：2019/06/15 14:30</p>
              <p class="gPlace">
                <span></span>
                [北京]北京 世纪剧院
              </p>
            </a>
          </li>
          <li>
            <a href="">
              <div>
                <img src="images/live/nlive01.jpg" alt="">
              </div>
              <p class="gTitle">【聚橙】世界经典法语音乐剧《罗密欧与朱丽叶》--北京站</p>
              <p class="gName">艺人：音乐剧《罗密欧与朱丽叶》剧组</p>
              <p class="gPrice">
                价格：<b>¥480-1180</b> 
              </p>
              <p class="gTime">时间：2019/06/15 14:30</p>
              <p class="gPlace">
                <span></span>
                [北京]北京 世纪剧院
              </p>
            </a>
          </li>
          <li>
            <a href="">
              <div>
                <img src="images/live/nlive01.jpg" alt="">
              </div>
              <p class="gTitle">【聚橙】世界经典法语音乐剧《罗密欧与朱丽叶》--北京站</p>
              <p class="gName">艺人：音乐剧《罗密欧与朱丽叶》剧组</p>
              <p class="gPrice">
                价格：<b>¥480-1180</b> 
              </p>
              <p class="gTime">时间：2019/06/15 14:30</p>
              <p class="gPlace">
                <span></span>
                [北京]北京 世纪剧院
              </p>
            </a>
          </li>-->
        </ul>
      </div>
      <div class="page">
        <a href="" class="page-prve"></a>
        <a href="" class="active">1</a>
        <a href="">2</a>
        <a href="">3</a>
        <a href="">4</a>
        <a href="">5</a>
        <a href="">6</a>
        <a href="">7</a>
        <a href="" class="page-next"></a>
      </div>
    </div>
</section>
</template>
<script>
export default {
  data(){
    return {
      lives_list:[],   //音乐人列表
    }
  },
  created(){
    //即将上演
    this.axios.get(
      "http://localhost:5050/tours/list"
    ).then(result=>{
      this.lives_list=result.data.result;
      console.log(result.data.result);
    })
  }
}
</script>
<style scoped>
  /*@import "../../public/css/lives.css"*/
</style>