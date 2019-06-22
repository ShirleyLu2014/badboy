<template>
  <section style="margin-top:0px;">
      <!--轮播图 -->
      <carousel></carousel>
      <!-- 一楼近期演出 -->
      <div class="firstFloor">
        <div class="upcoming">
          <div class="titleBar">
            <i></i>
            <h2 class="h2">即将上演</h2>
            <a href="live.html">MORE</a>
          </div>
          <div class="upcomingList">
            <router-link v-for="(t,i) of recent_tours" :tid="tid" :key="i" :to="`/live_details/${t.tid}`">
              <div class="showImg">
                <img :src="t.sphoto" alt="" :title="t.stitle">
              </div>
              <p class="showTitle">{{t.stitle}}</p>
              <p class="showTime">{{new Date(t.time).toLocaleString()}}</p>
              <p class="site">[{{t.city}}]{{t.vname}}</p>
              <p class="showPrice">¥{{t.price.toFixed(2)}}</p>
            </router-link>
          </div>
        </div>
        <div class="showCalendar">
          <div class="calendarHead">
            <div class="calendarTitle">
              <h2 class="h2">演出日历</h2>
            </div>
            <div class="calendarDate">
              <div class="calendarYear">
                <span class="leftShift"></span>
                <span class="year">2019年</span>
                <span class="month">1月</span>
                <span class="rightShift"></span>
              </div>
            </div>
          </div>
          <div class="calendarMain">
            <table cellpadding="0" cellspacing="0">
              <tbody>
                <tr class="weekHead">
                  <td><span>周一</span></td>
                  <td><span>周二</span></td>
                  <td><span>周三</span></td>
                  <td><span>周四</span></td>
                  <td><span>周五</span></td>
                  <td><span>周六</span></td>
                  <td><span>周日</span></td>
                </tr>
                <tr class="dateTd">
                  <td class="preMonthDay">
                    <div dateview="2019-05-27" class="activity">
                      <span class="span redDot redSquare"></span>
                      <i>27</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-28">
                      <span></span>
                      <i>28</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-29">
                      <span></span>
                      <i>29</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-30">
                      <span></span>
                      <i>30</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-31">
                      <span>1场</span>
                      <i>31</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-06-01">
                      <span>48</span>
                      <i>01</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-06-02">
                      <span class="redSquare">35场</span>
                      <i>02</i>
                    </div>
                  </td>
                </tr>
                <tr class="dateTd">
                  <td class="preMonthDay">
                    <div dateview="2019-05-27">
                      <span></span>
                      <i>27</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-28">
                      <span></span>
                      <i>28</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-29">
                      <span></span>
                      <i>29</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-30">
                      <span></span>
                      <i>30</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-31">
                      <span>1场</span>
                      <i>31</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-06-01">
                      <span>48</span>
                      <i>01</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-06-02">
                      <span>35场</span>
                      <i>02</i>
                    </div>
                  </td>
                </tr>
                <tr class="dateTd">
                  <td class="preMonthDay">
                    <div dateview="2019-05-27">
                      <span></span>
                      <i>27</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-28">
                      <span></span>
                      <i>28</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-29">
                      <span></span>
                      <i>29</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-30">
                      <span></span>
                      <i>30</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-31">
                      <span>1场</span>
                      <i>31</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-06-01">
                      <span>48</span>
                      <i>01</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-06-02">
                      <span>35场</span>
                      <i>02</i>
                    </div>
                  </td>
                </tr>
                <tr class="dateTd">
                  <td class="preMonthDay">
                    <div dateview="2019-05-27">
                      <span></span>
                      <i>27</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-28">
                      <span></span>
                      <i>28</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-29">
                      <span></span>
                      <i>29</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-30">
                      <span></span>
                      <i>30</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-31">
                      <span>1场</span>
                      <i>31</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-06-01">
                      <span>48</span>
                      <i>01</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-06-02">
                      <span>35场</span>
                      <i>02</i>
                    </div>
                  </td>
                </tr>
                <tr class="dateTd">
                  <td class="preMonthDay">
                    <div dateview="2019-05-27">
                      <span></span>
                      <i>27</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-28">
                      <span></span>
                      <i>28</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-29">
                      <span></span>
                      <i>29</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-30">
                      <span></span>
                      <i>30</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-31">
                      <span>1场</span>
                      <i>31</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-06-01">
                      <span>48</span>
                      <i>01</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-06-02">
                      <span>35场</span>
                      <i>02</i>
                    </div>
                  </td>
                </tr>
                <tr class="dateTd">
                  <td class="preMonthDay">
                    <div dateview="2019-05-27">
                      <span></span>
                      <i>27</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-28">
                      <span></span>
                      <i>28</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-29">
                      <span></span>
                      <i>29</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-30">
                      <span></span>
                      <i>30</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-05-31">
                      <span>1场</span>
                      <i>31</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-06-01">
                      <span>48</span>
                      <i>01</i>
                    </div>
                  </td>
                  <td class="preMonthDay">
                    <div dateview="2019-06-02">
                      <span>35场</span>
                      <i>02</i>
                    </div>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
      <!-- 二楼导航 -->
      <div class="secondFloor">
        <div>
          <a href="venue.html">
            <i></i>
            <dl>
              <dt>
                <span>混livehouse</span>感受音乐现场的魅力
              </dt>
              <dd>戳这里发现你附近的livehouse>></dd>
            </dl>
          </a>
        </div>
        <div>
          <a href="artist.html">
            <i></i>
            <dl>
              <dt>
                <span>关注badboy音乐人</span>给你好看
              </dt>
              <dd>戳这里发现你喜爱的独立音乐人>></dd>
            </dl>
          </a>
        </div>
        <div>
          <a href="">
            <i></i>
            <dl>
              <dt>
                <span>了解厂牌</span>大牌动态一手掌握
              </dt>
              <dd>戳这里发现你喜爱的厂牌>></dd>
            </dl>
          </a>
        </div>
      </div>
      <!-- 三楼热门演出 -->
      <div class="thirdFloor">
        <div class="titlebar">
          <i></i>
          <h2 class="h2">热门演出</h2>
          <a href="live.html">MORE</a>
        </div>
        <div class="hotShow">
          <router-link v-for="(t,i) of hot_tours" :key="i" :to="`/live_details/${t.tid}`" class="hotList">
            <div>
              <img :src="t.sphoto" alt="">
            </div>
            <div>
              <p class="hotTitle">{{t.stitle}}</p>
              <p class="hotArt">艺人： {{t.artists}}</p>
              <p class="hotTime">时间：{{new Date(t.time).toLocaleString()}}</p>
              <p class="hotSite">地点：{{t.city}} {{t.vname}}</p>
              <p class="hotPrice">¥{{t.price.toFixed(2)}}</p>
            </div>
          </router-link>
        </div>
      </div>
      <!-- 四楼音乐现场 -->
      <div class="fourthFloor">
        <div class="fourthLeft">
          <div class="titleBar">
            <i></i>  
            <h2 class="h2">音乐现场</h2>
            <a href="venue.html">MORE</a>
          </div>
          <div class="liveHouse">
            <router-link v-for="(t,i) of hot_venues" :key="i" :vid="vid" :to="`/venue_details/${t.vid}`" class="liveList">
             <!--<img :src="t.sphoto" alt="" :title="t.stitle">-->
              <img :src="t.vpic" alt="">
              <div class="liveDetail">
                <p class="liveTitle">
                  <i></i>
                  <span>{{t.vname}}</span>
                </p>
                <p class="liveAdd">{{t.vaddress}}</p>
                <p class="liveCount">最近有 {{t.tcount}}场 演出</p>
              </div>
            </router-link>
          </div>
        </div>
        <div class="fourthRight">
          <div class="boxTitle">
            <h2>骨灰乐迷</h2>
          </div>
          <div class="fans">
            <a href="" class="fansItem bgImgFirst">
              <img src="images/index/fans1.jpg" alt="">
              <p>Gatsby</p>
              <b class="rankNum">1</b>
            </a>
            <a href="" class="fansItem bgImgSecond">
              <img src="images/index/fans1.jpg" alt="">
              <p>Gatsby</p>
              <b class="rankNum">2</b>
            </a>
            <a href="" class="fansItem bgImgThird">
              <img src="images/index/fans1.jpg" alt="">
              <p>Gatsby</p>
              <b class="rankNum">3</b>
            </a>
            <a href="" class="fansItem">
              <img src="images/index/fans1.jpg" alt="">
              <p>Gatsby</p>
              <b class="rankNum">4</b>
            </a>
            <a href="" class="fansItem">
              <img src="images/index/fans1.jpg" alt="">
              <p>Gatsby</p>
              <b class="rankNum">5</b>
            </a>
            <a href="" class="fansItem">
              <img src="images/index/fans1.jpg" alt="">
              <p>Gatsby</p>
              <b class="rankNum">6</b>
            </a>
            <a href="" class="fansItem">
              <img src="images/index/fans1.jpg" alt="">
              <p>Gatsby</p>
              <b class="rankNum">7</b>
            </a>
            <a href="" class="fansItem">
              <img src="images/index/fans1.jpg" alt="">
              <p>Gatsby</p>
              <b class="rankNum">8</b>
            </a>
          </div>
        </div>
      </div>
      <!-- 五楼音乐人 -->
      <div class="fifthFloor">
        <div class="fifthLeft">
          <div class="titleBar">
            <i></i>  
            <h2 class="h2">热门音乐人</h2>
            <a href="artist.html">MORE</a>
          </div>
          <div class="artList">
            <ul>
              <li v-for="(t,i) of hot_artists" :key="i">
                <router-link :to="`artist_details/${t.aid}`" class="artItem">
                  <!--<img :src="t.aphoto" alt="">-->
                  <img src="/image⁩s/artists/cw/hp.jpg" alt="">
                  <div class="top">
                    <div class="topBg">
                      <span class="top1"></span>
                    </div>
                    <div class="topDetail">
                      <p class="artName">{{t.aname}}</p>
                      <p class="artStyle">{{t.stname}}</p>
                    </div>
                  </div>
                </router-link>
              </li>
            </ul>
          </div>
        </div>
        <div class="fifthRight">
          <div class="boxTitle">
            <h2>热门音乐</h2>
            <ul id="popMusic">
              <li>
                <div>
                  <img src="/images/news_picture/np25.jpg" alt="">
                  <audio src="/audio/04 - 溺爱.mp3"></audio>
                  <p>▶</p>
                </div>
                <div>
                  <span>溺爱</span>
                  <br>
                  <a href="#">郑钧</a>
                </div>
                <div>
                    1
                </div>
              </li>
              <li>
                <div>
                  <img src="/images/news_picture/np25.jpg" alt="">
                  <audio src="/audio/09 - 灰姑娘.mp3"></audio>
                  <p>▶</p>
                </div>
                <div>
                  <span>灰姑娘</span>
                  <br>
                  <a href="#">郑钧</a>
                </div>
                <div>
                    1
                </div>
              </li>
              <li>
                <div>
                  <img src="/images/news_picture/np25.jpg" alt="">
                  <audio src="/audio/03 - 极乐世界.mp3"></audio>
                  <p>▶</p>
                </div>
                <div>
                  <span>极乐世界</span>
                  <br>
                  <a href="#">郑钧</a>
                </div>
                <div>
                    1
                </div>
              </li>
            </ul>
          </div>
        </div>
      </div>
  </section>
</template>
<script>
import carousel from "../components/Index/Carousel"
export default {
  data(){
    return {
      recent_tours:[],   //即将上演列表
      hot_tours:[],       //热门演出列表
      hot_venues:[],      //热门现场
      hot_artists:[],   //热门音乐人列表
      tid:"",
      vid:""
    }
  },
  created(){
    //即将上演
    this.axios.get(
      "tours/recent"
    ).then(result=>{
      this.recent_tours=result.data;
      console.log(result.data);
    }),
  this.axios.get(
      "tours/hot"
    ).then(result=>{
      this.hot_tours=result.data;
      console.log(result.data);
    })
  this.axios.get(
      "venues/hot"
    ).then(result=>{
      this.hot_venues=result.data;
      console.log(result.data);
    })
    this.axios.get(
      "artists/hot"
    ).then(result=>{
      this.hot_artists=result.data;
      console.log(result.data);
    })
  },
  components:{ carousel },
}
</script>
<style scoped>
  @import "../../public/css/index.css"
</style>
