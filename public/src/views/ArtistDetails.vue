<template>
  <section>
    <div class="hr"></div>
    <!-- 一楼艺人简介 -->
    <div class="artHead">
      <div class="artPhoto">
        <img :src="artist_details.aphoto" alt="">
      </div>
      <div class="artDesc">
        <i class="arrow"></i>
        <h1>{{artist_details.aname}}<span></span></h1>
        <p>风格：{{artist_details.stname}}</p>
      </div>
      <div class="artFans">
        <div class="attention">
          <a href=""><span></span>我要关注</a>
        </div>
        <div class="share">
          <span>分享到</span>
          <div>
            <a href="" class="qznoe"></a>
            <a href="" class="sina"></a>
            <a href="" class="douban"></a>
            <a href="" class="txwb"></a>
            <a href="" class="qq"></a>
          </div>
        </div>
      </div>
    </div>
    <!-- 二楼艺人详情 -->
    <div class="detailWrap">
      <div class="wrap-head">
        <ul>
          <li>
            <a href="javascript:;" @click="liveShow()">演出</a>
          </li>
          <li>
            <a href="javascript:;">作品</a>
          </li>
          <li>
            <a href="javascript:;" @click="briefShow()">简介</a>
          </li>
        </ul>
      </div>
      <div class="wrap-content">
        <div class="itemLeft">
          <!-- 艺人相关演出 -->
          <div class="content" v-show="shows">
            <div class="group">
              <h2>全部演出</h2>
              <ul class="comingList">
                <li>
                  <router-link to="">
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
                  </router-link>
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
              </ul>
              <div class="more">
                <a href="">查看更多</a>
              </div>
            </div>
          </div>
          <!-- 艺人简介 -->
          <div class="content" v-show="unshows">
            <div class="group">
              <h2>简介</h2>
              <div v-html="artist_details.profile" class="artistProfile"></div>
              <h2 class="imgTitle">相关图片</h2>
              <ul>
                <li>
                  <a href="">
                    <img src="images/artists/ty/ty01.jpg" alt="">
                  </a>
                </li>
                <li>
                  <a href="">
                    <img src="images/artists/ty/ty02.jpg" alt="">
                  </a>
                </li>
                <li>
                  <a href="">
                    <img src="images/artists/ty/ty03.jpg" alt="">
                  </a>
                </li>
                <li>
                  <a href="">
                    <img src="images/artists/ty/ty04.jpg" alt="">
                  </a>
                </li>
                <li>
                  <a href="">
                    <img src="images/artists/ty/ty05.jpg" alt="">
                  </a>
                </li>
                <li>
                  <a href="">
                    <img src="images/artists/ty/ty06.jpg" alt="">
                  </a>
                </li>
                <li>
                  <a href="">
                    <img src="images/artists/ty/ty07.jpg" alt="">
                  </a>
                </li>
                <li>
                  <a href="">
                    <img src="images/artists/ty/ty08.jpg" alt="">
                  </a>
                </li>
                <li>
                  <a href="">
                    <img src="images/artists/ty/ty09.jpg" alt="">
                  </a>
                </li>
                <li>
                  <a href="">
                    <img src="images/artists/ty/ty10.jpg" alt="">
                  </a>
                </li>
              </ul>
            </div>
          </div>
        </div>
        <!-- 右侧互动区域 -->
        <div class="itemRight">
          <div class="tag">
            <h3><i></i>标签</h3>
            <div><a href="">{{artist_details.stname}}</a></div>
          </div>
          <div class="fans">
            <div class="fansHead">乐迷(<span>28853</span>)</div>
            <div class="fansList">
              <a href="javascript:;" v-for="(t,i) of artist_fans">
                <img :src="t.avatar" alt="">
              </a>
              <!--<a href="">
                <img src="images/index/fans001.jpg" alt="">
              </a>
              <a href="">
                <img src="images/index/fans001.jpg" alt="">
              </a>
              <a href="">
                <img src="images/index/fans001.jpg" alt="">
              </a>
              <a href="">
                <img src="images/index/fans001.jpg" alt="">
              </a>
              <a href="">
                <img src="images/index/fans001.jpg" alt="">
              </a>
              <a href="">
                <img src="images/index/fans001.jpg" alt="">
              </a>
              <a href="">
                <img src="images/index/fans001.jpg" alt="">
              </a>
              <a href="">
                <img src="images/index/fans001.jpg" alt="">
              </a>
              <a href="">
                <img src="images/index/fans001.jpg" alt="">
              </a>-->
            </div>
          </div>
          <div class="around">
            <h3>你可能还想了解</h3>
            <ul>
              <li>
                <a href="">
                  <span class="bg">
                    <img src="images/index/fans002.jpg" alt="">
                    <span></span>
                  </span>
                  <span class="aboutName">耳光乐队</span>
                </a>
              </li>
              <li>
                <a href="">
                  <span class="bg">
                    <img src="images/index/fans002.jpg" alt="">
                    <span></span>
                  </span>
                  <span class="aboutName">耳光乐队</span>
                </a>
              </li>
              <li>
                <a href="">
                  <span class="bg">
                    <img src="images/index/fans002.jpg" alt="">
                    <span></span>
                  </span>
                  <span class="aboutName">耳光乐队</span>
                </a>
              </li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </section>
</template>
<script>
export default {
  data(){
    return {
      aid:"",
      artist_item:{},
      artist_details:{},
      artist_fans:{},
      artist_venues:{},
      shows:true,
      unshows:false,
    }
  },
  methods: {   
  liveShow:function(){
      this.shows=true;
      this.unshows=false;
    },
    briefShow:function(){
      this.shows=false;
      this.unshows=true;
    },
  },
  props:["aid"],
  created(){
    //艺人详情页
    this.axios.get(
      "artists/details",
      {
         params:{aid:this.aid}
      }
    ).then(result=>{
      this.artist_item=result.data;
      this.artist_details=result.data.artist;
      this.artist_fans=result.data.fans;
      this.artist_venues=result.data.recent_venues;
      console.log(result.data);
      console.log(this.artist_details);
      console.log(this.artist_fans);
      console.log(this.artist_venues);
    })
  }
}
</script>
<style scoped>
  @import "../../public/css/artDetail.css";
</style>