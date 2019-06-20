<template>
  <section style="margin-top:0px;">
      <!--轮播图 -->
      <div id="demo" class="carousel" data-ride="carousel">
          <!--1.轮播图片-->
        <div class="carousel-inner">
          <div class="carousel-item active">
            <a href="">
              <img src="image/carousel_item/carousel-1.jpg"/>
            </a>
            <a href="">《Ghost Mane》| STARR J与恶魔一起住在Dark Castle")</a>
          </div>
          <div class="carousel-item">
            <a href="">
              <img src="image/carousel_item/carousel-2.jpg"/>
            </a>
            <a href="">赐我们一首比“情歌而已”更值得唱的歌 声音碎片第三支预热单曲《送流水》首发</a>
          </div>
          <div class="carousel-item">
            <a href="">
              <img src="image/carousel_item/carousel-3.jpg"/>
            </a>
            <a href="">我眼里只有一个3号他永远昂着头 | 黄旭全新单曲《低位》致敬韦德</a>
          </div>
          <div class="carousel-item">
            <a href="">
              <img src="image/carousel_item/carousel-4.jpg"/>
            </a>
            <a href="">彭坦春晓携女率性玩音乐 Modern Sky Kids厂牌汇聚亲子市场新能量</a>
          </div>
          <div class="carousel-item">
            <a href="">
              <img src="image/carousel_item/carousel-5.jpg"/>
            </a>
            <a href="">曾轶可另类创作再出击 全新单曲《Truly》真心上线</a>
          </div>
          <div class="carousel-item">
            <a href="">
              <img src="image/carousel_item/carousel-6.jpg"/>
            </a>
            <a href="">16层新专辑先行单曲上线，精巧器乐铺排搭建诡异《失落园》</a>
          </div>
          <div class="carousel-item">
            <a href="">
              <img src="image/carousel_item/carousel-7.jpg"/>
            </a>
            <a href="">标题如歌” | OBi《爱你》温柔上线</a>
          </div>
          <div class="carousel-item">
            <a href="">
              <img src="image/carousel_item/carousel-8.jpg"/>
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
      <!-- 一楼近期演出 -->
      <div class="firstFloor">
        <div class="upcoming">
          <div class="titleBar">
            <i></i>
            <h2>即将上演</h2>
            <a href="live.html">MORE</a>
          </div>
          <div class="upcomingList">
            <router-link v-for="(t,i) of recent_tours" :key="i" :to="`/live_details/${t.tid}`">
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
              <h2>演出日历</h2>
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
              <dd>戳这里发现你附近的livehouse>></dd></dd>
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
              <dd>戳这里发现你喜爱的独立音乐人>></dd></dd>
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
              <dd>戳这里发现你喜爱的厂牌>></dd></dd>
            </dl>
          </a>
        </div>
      </div>
      <!-- 三楼热门演出 -->
      <div class="thirdFloor">
        <div class="titlebar">
          <i></i>
          <h2>热门演出</h2>
          <a href="live.html">MORE</a>
        </div>
        <div class="hotShow">
          <a href="" class="hotList">
            <div>
              <img src="image/index/hotshow1.jpg" alt="">
            </div>
            <div>
              <p class="hotTitle">ONE THIRD X SMILEY派对</p>
              <p class="hotArt">艺人： DJ A-DA</p>
              <p class="hotTime">时间：2019-06-06 22:00</p>
              <p class="hotSite">地点：北京 ONE THIRD酒吧</p>
              <p class="hotPrice">¥120</p>
            </div>
          </a>
          <a href="" class="hotList">
            <div>
              <img src="image/index/hotshow1.jpg" alt="">
            </div>
            <div>
              <p class="hotTitle">ONE THIRD X SMILEY派对</p>
              <p class="hotArt">艺人： DJ A-DA</p>
              <p class="hotTime">时间：2019-06-06 22:00</p>
              <p class="hotSite">地点：北京 ONE THIRD酒吧</p>
              <p class="hotPrice">¥120</p>
            </div>
          </a>
          <a href="" class="hotList">
            <div>
              <img src="image/index/hotshow1.jpg" alt="">
            </div>
            <div>
              <p class="hotTitle">ONE THIRD X SMILEY派对</p>
              <p class="hotArt">艺人： DJ A-DA</p>
              <p class="hotTime">时间：2019-06-06 22:00</p>
              <p class="hotSite">地点：北京 ONE THIRD酒吧</p>
              <p class="hotPrice">¥120</p>
            </div>
          </a>
          <a href="" class="hotList">
            <div>
              <img src="image/index/hotshow1.jpg" alt="">
            </div>
            <div>
              <p class="hotTitle">ONE THIRD X SMILEY派对</p>
              <p class="hotArt">艺人： DJ A-DA</p>
              <p class="hotTime">时间：2019-06-06 22:00</p>
              <p class="hotSite">地点：北京 ONE THIRD酒吧</p>
              <p class="hotPrice">¥120</p>
            </div>
          </a>
        </div>
      </div>
      <!-- 四楼音乐现场 -->
      <div class="fourthFloor">
        <div class="fourthLeft">
          <div class="titleBar">
            <i></i>  
            <h2>音乐现场</h2>
            <a href="venue.html">MORE</a>
          </div>
          <div class="liveHouse">
            <a href="venueDetails.html" class="liveList">
              <img src="image/index/liovehouse01.jpg" alt="">
              <div class="liveDetail">
                <p class="liveTitle">
                  <i></i>
                  <span>蘑菇空间.MoguSpace</span>
                </p>
                <p class="liveAdd">北京市海淀区北下关交大东路66号钻河中心2号楼102号蘑菇商店</p>
                <p class="liveCount">最近有 80场 演出</p>
              </div>
            </a>
            <a href="" class="liveList">
              <img src="image/index/livehouse02.jpg" alt="">
              <div class="liveDetail">
                <p class="liveTitle">
                  <i></i>
                  <span>PINKMOON.樂暮</span>
                </p>
                <p class="liveAdd">东城区南锣鼓巷雨儿胡同2号{非遗博物馆}2楼{靠近中央戏剧学院}</p>
                <p class="liveCount">最近有 47场 演出</p>
              </div>
            </a>
          </div>
        </div>
        <div class="fourthRight">
          <div class="boxTitle">
            <h2>骨灰乐迷</h2>
          </div>
          <div class="fans">
            <a href="" class="fansItem bgImgFirst">
              <img src="image/index/fans1.jpg" alt="">
              <p>Gatsby</p>
              <b class="rankNum">1</b>
            </a>
            <a href="" class="fansItem bgImgSecond">
              <img src="image/index/fans1.jpg" alt="">
              <p>Gatsby</p>
              <b class="rankNum">2</b>
            </a>
            <a href="" class="fansItem bgImgThird">
              <img src="image/index/fans1.jpg" alt="">
              <p>Gatsby</p>
              <b class="rankNum">3</b>
            </a>
            <a href="" class="fansItem">
              <img src="image/index/fans1.jpg" alt="">
              <p>Gatsby</p>
              <b class="rankNum">4</b>
            </a>
            <a href="" class="fansItem">
              <img src="image/index/fans1.jpg" alt="">
              <p>Gatsby</p>
              <b class="rankNum">5</b>
            </a>
            <a href="" class="fansItem">
              <img src="image/index/fans1.jpg" alt="">
              <p>Gatsby</p>
              <b class="rankNum">6</b>
            </a>
            <a href="" class="fansItem">
              <img src="image/index/fans1.jpg" alt="">
              <p>Gatsby</p>
              <b class="rankNum">7</b>
            </a>
            <a href="" class="fansItem">
              <img src="image/index/fans1.jpg" alt="">
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
            <h2>热门音乐人</h2>
            <a href="artist.html">MORE</a>
          </div>
          <div class="artList">
            <ul>
              <li>
                <a href="artDetail.html" class="artItem">
                  <img src="image/index/art01.jpg" alt="">
                  <div class="top">
                    <div class="topBg">
                      <span class="top1"></span>
                    </div>
                    <div class="topDetail">
                      <p class="artName"> 泥鳅Zinco</p>
                      <p class="artStyle">HipHop</p>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="" class="artItem">
                  <img src="image/index/art01.jpg" alt="">
                  <div class="top">
                    <div class="topBg">
                      <span class="top2"></span>
                    </div>
                    <div class="topDetail">
                      <p class="artName"> 泥鳅Zinco</p>
                      <p class="artStyle">HipHop</p>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="" class="artItem">
                  <img src="image/index/art01.jpg" alt="">
                  <div class="top">
                    <div class="topBg">
                      <span class="top3"></span>
                    </div>
                    <div class="topDetail">
                      <p class="artName"> 泥鳅Zinco</p>
                      <p class="artStyle">HipHop</p>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="" class="artItem">
                  <img src="image/index/art01.jpg" alt="">
                  <div class="top">
                    <div class="topBg">
                      <span class="top4"></span>
                    </div>
                    <div class="topDetail">
                      <p class="artName"> 泥鳅Zinco</p>
                      <p class="artStyle">HipHop</p>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="" class="artItem">
                  <img src="image/index/art01.jpg" alt="">
                  <div class="top">
                    <div class="topBg">
                      <span class="top5"></span>
                    </div>
                    <div class="topDetail">
                      <p class="artName"> 泥鳅Zinco</p>
                      <p class="artStyle">HipHop</p>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="" class="artItem">
                  <img src="image/index/art01.jpg" alt="">
                  <div class="top">
                    <div class="topBg">
                      <span class="top6"></span>
                    </div>
                    <div class="topDetail">
                      <p class="artName"> 泥鳅Zinco</p>
                      <p class="artStyle">HipHop</p>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="" class="artItem">
                  <img src="image/index/art01.jpg" alt="">
                  <div class="top">
                    <div class="topBg">
                      <span class="top7"></span>
                    </div>
                    <div class="topDetail">
                      <p class="artName"> 泥鳅Zinco</p>
                      <p class="artStyle">HipHop</p>
                    </div>
                  </div>
                </a>
              </li>
              <li>
                <a href="" class="artItem">
                  <img src="image/index/art01.jpg" alt="">
                  <div class="top">
                    <div class="topBg">
                      <span class="top8"></span>
                    </div>
                    <div class="topDetail">
                      <p class="artName"> 泥鳅Zinco</p>
                      <p class="artStyle">HipHop</p>
                    </div>
                  </div>
                </a>
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
                  <img src="/image/news_picture/np25.jpg" alt="">
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
                  <img src="/image/news_picture/np25.jpg" alt="">
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
                  <img src="/image/news_picture/np25.jpg" alt="">
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
export default {
  data(){
    return {
      recent_tours:[]
    }
  },
  created(){
    this.axios.get(
      "http://localhost:5050/tours/recent"
    ).then(result=>{
      this.recent_tours=result.data;
      console.log(result.data);
    })
  }
}
</script>
<style scoped>
  body{
    font: 13px/1.5 "Microsoft YaHei", 宋体;
    margin:0;
    padding:0;
  }
  section{
    width:100%;
    margin-top:60px;
  }
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
  /*演出列表样式 */
  section>div{
    width:1200px;
    margin:60px auto 0; 
  }
  section>div.carousel{
    width:100%;
  }
  /* 一楼样式 */
  .firstFloor{
    display:flex;
    justify-content: space-between;
    height:376px;
  }
  .firstFloor>.upcoming{
    width:810px;
    /* border:1px solid #f00; */
  }
  .firstFloor>.showCalendar{
    width:388px;
    /* border:1px solid #f00; */
  }
  h2{ 
    color:#666666;
    font-size:20px;
  }
  .firstFloor>.upcoming>.titlebar{
    width:820px;
  }
  /*.firstFloor>.upcoming>.titleBar{
    display:flex;
    height:30px;
  }
  .firstFloor>.upcoming>.titleBar>i{
    display: inline-block;
    vertical-align: middle;
    width: 20px;
    height: 24px;
    background: url("/image/index/icon.png") -239px -117px no-repeat;
    margin: 0px 5px;
  }
  .firstFloor>.upcoming>.titleBar>a{*/
    /* display:inline-block;
    height:30px; */
    /*text-decoration:none;
    font-size: 14px;
    color: #e72f2f;
    line-height: 30px;*/
    /* margin-top:0px; */
  /* } */
  .firstFloor>.upcoming>.upcomingList{
    margin-top:20px;
  }
  .firstFloor>.upcoming>.upcomingList:after {
    content: " ";
    display: block;
    /* height: 0; */
    clear: both;
    /* visibility: hidden;
    line-height: 0; */
  }
  .firstFloor>.upcoming>.upcomingList>a{
    text-decoration: none;
    color: #666;
    outline: 0;
  }
  .firstFloor>.upcoming>.upcomingList>a{
    text-decoration:none;
    float: left;
    border: 1px #eee solid;
    padding: 10px;
    width: 192px;
    height: 323px;
    font-size: 12px;
    margin-right: 10px;
    color: #666;
  }
  .showImg{
    position:relative;
  }
  .showImg>img {
    max-width: 100%;
    height: 200px;
    vertical-align: middle;
    border: 0;
  }
  .upcomingList>a>p{
    margin:0;
    font-size: 12px;
    overflow: hidden;
    text-overflow: ellipsis;
    white-space: nowrap;
  }
  .upcomingList>a>p.showTitle{
    font-size: 14px;
    margin-top:5px;
  }
  .upcomingList>a>p.showPrice{
    font-size: 14px;
    color: #e72f2f;
    margin-top:10px;
  }
  .upcomingList>a>p.showTime{
    margin-top:10px;
  }
  .upcomingList>a>p.site{
    margin-top:0px;
  }
  .upcomingList>a>p.showTime:hover,.upcomingList>a>p.site:hover{
    color:#e72f2f;
  }
  /* 演出日历 */
  /* 日历标题 */
  .showCalendar>.calendarHead{
    height:50px;
    /* border:1px solid #f00; */
    display:flex;
    justify-content: space-between;
  }
  .showCalendar>.calendarHead>.calendarTitle{
    width:150px;
  }
  span.year,span.month{
    display:inline-block;
    font-size:18px;
    color:#666666;
    vertical-align: middle;
  }
  .showCalendar>.calendarHead>.calendarDate{
    border: 1px #fff solid;
    padding: 0 10px; 
    margin: -1px -11px;
    /* border-bottom: 1px #eee solid; */
    overflow: hidden;
  }
  .showCalendar>.calendarHead>.calendarDate>.calendarYear>span.leftShift{
    display: inline-block;
    vertical-align: middle;
    width: 24px;
    height: 24px;
    background-image: url("/image/index/droll-icon.png");
    background-position: -126px 0px;
    cursor: pointer;
  }
  .showCalendar>.calendarHead>.calendarDate>.calendarYear>span.rightShift{
    display: inline-block;
    vertical-align: middle;
    width: 24px;
    height: 24px;
    background-image: url("/image/index/droll-icon.png");
    background-position: -127px -39px;
    cursor: pointer;
  }
  /*.showCalendar td{
    text-align:center;
    line-height:52px;
  }*/
  /* 日历主体 */
  .calendarMain{
    padding:0 10px;
    width:100%;
    height:323px;
    border:1px solid #eee;
  }
  /* 星期头 */
  .weekHead{
    width:100%;
    height:52px;
    border-bottom:1px solid #eee;
  }
  .weekHead>td{
    width:52px;
    height:52px;
    text-align:center;
    line-height:52px;
  }
  .dateTd>td{
    width:52px;
    height:45px;
    line-height:45px;
    text-align:center;
  }
  .preMonthDay>div{
    position:relative;
  }
  .dateTd span{
    opacity: 0;
    position:absolute;
    top:0;
    left:0;
    display:inline-block;
    width:52px;
    height:45px;
    line-height:45px;
    text-align:center;
  }
  .dateTd .redDot{
    opacity: 1;
    width: 6px;
    height: 6px;
    border-radius: 100%;
    top: 33px;
    left: 50%;
    margin-left: -3px;
    background-color: #e72f2f;
    overflow: hidden;
    color: #e72f2f;
  }
  .dateTd .redSquare{
    opacity: 1;
    background-color: #e72f2f;
    color:#fff;
  }
  .dateTd i,span{
  font: 13px/1.5 "Microsoft YaHei", 宋体;
  }
  /* 二楼样式 */
  .secondFloor{
    margin-top: 25px;
    background: #fff;
    height:94px;
    display:flex;
    justify-content: space-between;
  }
  .secondFloor>div>a{
    display:inline-block;
    text-decoration:none;
    width:386px;
    height:94px;
    padding:25px 20px;
    box-sizing:boder-box;
    border: 1px #eee solid;
    border-radius: 4px;
    font-size: 12px;
    color: #666;
  }
  .secondFloor>div>a>i{
    display:inline-block;
    width: 38px;
    height: 40px;
    background: url("/image/index/icon.png") no-repeat;
    margin: 0 20px 0 10px;
    background-position: -67px -439px;
  }
  .secondFloor>div>a>dl{
    display:inline-block;
  }
  .secondFloor>div>a>dl>dt{
    font-size:16px;
    display:block;
    color:#666666;
  }
  .secondFloor>div>a>dl>dt>span{
    color: #29abe2;
    font-size:16px;
  }
  .secondFloor>div:nth-child(2)>a>i{
    background-position: 6px -433px;
  }
  .secondFloor>div:nth-child(3)>a>i{
    background-position: -135px -438px;
  }
  /* 三楼样式 */
  .thirdFloor{
    margin-top:25px;
  }
  .thirdFloor>.titlebar{
    height:34px;
    /* border:1px solid #f00; */
    padding:0;
    margin:0;
  }
  .thirdFloor>.titlebar{
    display:flex;
  }
  .thirdFloor>.titlebar>i{
    margin-left:0;
    display:inline-block;
    width: 30px;
    height: 30px;
    background: url("/image/index/icon.png") no-repeat;
    background-position: -272px -336px;
  }
  .thirdFloor>.titlebar>h2{
    line-height:34px;
    margin-left:10px;
  }
  .thirdFloor>.titlebar>a{
    text-decoration:none;
    display:inline-block;
    color:#e72f2f;
    font-size:14px;
    line-height:34px;
    margin-left:1035px;
  }
  .thirdFloor>.hotShow{
    display:flex;
    justify-content: space-between;
    margin-top:15px;
    padding:20px 0;
    border-top:1px dashed #eee;
    border-bottom:1px dashed #eee;
  }
  .thirdFloor>.hotShow>.hotList{
    text-decoration:none;
    display:block;
    width:290px;
    height:162px;
    border:1px solid #eee;
    display:flex;
    justify-content: space-between;
  }
  .thirdFloor>.hotShow>.hotList>div>img{
    width:122px;
    height:162px;
  }
  .thirdFloor>.hotShow>.hotList>p{
    text-decoration:none;
    display:flex;
  }
  .thirdFloor>.hotShow>.hotList>div>p{
    width:148px;
    margin:0;
    padding:0;
    font-size:12px;
    color:#666666;
  }
  .thirdFloor>.hotShow>.hotList>div>.hotTitle{
    margin-top:5px;
    font-size: 14px;
    height: 42px;
    line-height: 21px;
    overflow: hidden;
    color:#333333;
  }
  .thirdFloor>.hotShow>.hotList>div>.hotSite{
    overflow: hidden;
    white-space: nowrap;
    text-overflow: ellipsis;
  }
  .thirdFloor>.hotShow>.hotList>div>.hotArt{
    margin-top:10px;
  }
  .thirdFloor>.hotShow>.hotList>div>.hotPrice{
    margin-top:10px;
    font-size:15px;
    color:#e72f2f;
  }
  .thirdFloor>.hotShow>.hotList:hover>div>.hotArt,
  .thirdFloor>.hotShow>.hotList:hover>div>.hotTime,
  .thirdFloor>.hotShow>.hotList:hover>div>.hotSite{
    color:#e72f2f;
  }
  .fourthFloor{
    height:346px;
    display:flex;
    justify-content:space-between;
    margin-top:25px;
  }
  .fourthFloor>.fourthLeft{
    width:820px;
    height:346px;
    }
  .titleBar{
    height:34px;
    padding:0;
    margin:0;
    display:flex;
    }
    .titleBar>i{
      display:inline-block;
      width: 34px;
      height: 34px;
      background: url("/image/index/icon.png") no-repeat;
    }
    .titleBar>h2{
      width:100px;
      height:34px;
      line-height:34px;
      margin-left:10px;
    }
    .fourthFloor>.fourthLeft>.titleBar>i{
      background-position: -110px -335px;
    }
    .titleBar>a{
      text-decoration:none;
      display:inline-block;
      color:#e72f2f;
      font-size:14px;
      line-height:34px;
    }
    .titleBar>a{
      margin-left:652px;
    }
    .firstFloor>.upcoming>.titleBar>i{
      background-position: -163px -335px !important;
    }
    .firstFloor>.upcoming>.titlebar>h2{
      width:200px;
    }
    .firstFloor>.upcoming>.titleBar>a{
      margin-left:612px !important;
    }
    .fourthFloor>.fourthRight{
      width:330px;
      height:340px;
    }
    .fourthFloor>.fourthLeft>.liveHouse{
      display:flex;
      justify-content:space-between;
      height:286px;
      margin-top:20px;
    }
    .fourthFloor>.fourthLeft>.liveHouse>.liveList{
      position:relative;
      text-decoration:none;
      display:block;
      width:406px;
      height:286px;
      color:#fff;
    }
    .fourthFloor>.fourthLeft>.liveHouse>.liveList>img{
      width:406px;
      height:286px;
    }
    .fourthFloor>.fourthLeft>.liveHouse>.liveList>.liveDetail{
      width:406px;
      /* height:65px; */
      height:94px;
      background:rgba(0,0,0,.65);
      padding: 10px 15px;
      position:absolute;
      /* top:221px; */
      top:192px;
      /* display:block; */
    }
    .fourthFloor>.fourthLeft>.liveHouse>.liveList>.liveDetail>p.liveTitle{
      width:100%;
      height:27px;
      line-height:27px;
      margin:0;
      font-size:18px;
      display:flex;
    }
    .fourthFloor>.fourthLeft>.liveHouse>.liveList>.liveDetail>p>i{
      width: 27px;
      height: 27px;
      line-height:27px;
      background: url("/image/index/icon.png") no-repeat;
      background-position: -210px -442px;
    }
    .fourthFloor>.fourthLeft>.liveHouse>.liveList>.liveDetail>p.liveTitle>span{
      font-size:18px;
    }
    .fourthFloor>.fourthLeft>.liveHouse>.liveList>.liveDetail>p.liveAdd{
      width:100%;
      height:27px;
      line-height:27px;
      font-size:13px;
      overflow:hidden;
    }
    .fourthFloor>.fourthLeft>.liveHouse>.liveList>.liveDetail>p.liveAdd{
      margin:0;
      width:100%;
      height:27px;
      line-height:27px;
      font-size:13px;
    }
    .boxTitle{
      height:55px;
      border:1px solid #eee;
      padding-left:20px;
    }
    .boxTitle>h2{
      margin:0;
      height:55px;
      line-height:55px;
      font-size:20px;
      /* font:'Microsoft YaHei',"\5b8b\4f53";
      color: #666; */
    }
    .fourthFloor>.fourthRight>.fans{
      padding: 31px 10px 18px 10px;
      text-align: center;
      font-size:12px;
      border:1px solid #eee;
      border-top:0;
      box-sizing:border-box;
    }
    .fourthFloor>.fourthRight>.fans>.fansItem{
      position:relative;
      display: inline-block;
      margin: 14px 10px 15px 10px;
      width: 54px;
      position: relative;
      padding-top: 11px;
      text-decoration:none;
      color: #666;
      outline: 0;
      width:54px;
      height:72px;
    }
    .fourthFloor>.fourthRight>.fans>.fansItem:hover{
      color:#e72f2f;
    }
    .fourthFloor>.fourthRight>.fans>.bgImgFirst{
      background:url("/image/index/ranking.png")  no-repeat;
      background-position:8px 0 ;
    }
    .fourthFloor>.fourthRight>.fans>.bgImgSecond{
      background:url("/image/index/ranking.png")  no-repeat;
      background-position:-64px 0 ;
    }
    .fourthFloor>.fourthRight>.fans>.bgImgThird{
      background:url("/image/index/ranking.png")  no-repeat;
      background-position:-131px 0 ;
    }
    .fourthFloor>.fourthRight>.fans>.fansItem>img{
      width:54px;
      height:54px;
      border-radius:50%;
    }
    .fourthFloor>.fourthRight>.fans>.fansItem>p {
      white-space: nowrap;
      overflow: hidden;
      text-overflow: ellipsis;
      height:18px;
  }
  .fourthFloor>.fourthRight>.fans>.fansItem>b{
    background-color: #39b54a;
    position: absolute;
    color: #fff;
    font-size: 12px;
    line-height: 12px;
    width: 12px;
    height: 12px;
    text-align: center;
    border-radius: 2px;
    right: 5px;
    bottom: 5px;
  }
  .fourthFloor>.fourthRight>.fans>.bgImgFirst>b{
    background-color: #fed341;
  }
  .fourthFloor>.fourthRight>.fans>.bgImgSecond>b{
    background-color: #cbcbcb;
  }
  .fourthFloor>.fourthRight>.fans>.bgImgThird>b{
    background-color: #ce871e;
  }
  .fifthFloor{
    height:543px;
    margin-top:20px;
    margin-bottom:120px;
    display:flex;
    justify-content:space-between;
    margin-top:25px;
  }
  .fifthFloor>.fifthLeft{
    width:820px;
  }
  .fifthFloor>.fifthRight{
    width:330px;
    height:543px;
    border:1px solid #f00;
  }
  .fifthFloor>.fifthLeft>.titleBar>a{
    margin-left:631px;
  }
  .fifthFloor>.fifthLeft>.titleBar>i{
    background-position: -223px -336px;
  }
  .fifthFloor>.fifthLeft>.artList{
    margin-top:10px;
    width:820px;
    height:510px;
  }
  .fifthFloor>.fifthLeft>.artList>ul{
    width:820px;
    display:flex;
    flex-wrap: wrap;
    list-style:none;
    display:flex;
    justify-content:space-between;
  }
  .fifthFloor>.fifthLeft>.artList>ul>li{
    width:198px;
    height:225px;
    margin-bottom:30px;
  }
  .fifthFloor>.fifthLeft>.artList>ul>li>img{
    width:198px;
    height:170px;
  }
  .fifthFloor>.fifthLeft>.artList>ul>li>.artItem{
    text-decoration:none;
  }
  .fifthFloor>.fifthLeft>.artList>ul>li>.artItem p{
    margin:0;
    padding:0;
  }
  .fifthFloor>.fifthLeft>.artList>ul>li>.artItem>.top{
    display:flex;
    height:47px;
    margin-top:10px;
    border:1px solid #eee;
    text-align:center;
  }
  .fifthFloor>.fifthLeft>.artList>ul>li>.artItem>.top>div.topBg{
    display:inline-block;
    line-height:47px;
    width:47px;
    padding:8px 0 8px 0;
    overflow: hidden;
  }
  .fifthFloor>.fifthLeft>.artList>ul>li>.artItem>.top>div.topBg>span{
    display:inline-block;
    width:22px;
    height:31px;
    background:url("/image/index/artisthot.png") no-repeat;
  }
  .fifthFloor>.fifthLeft>.artList>ul>li>.artItem>.top>div.topBg>span.top2{
    background-position:-27px 0;
  }
  .fifthFloor>.fifthLeft>.artList>ul>li>.artItem>.top>div.topBg>span.top3{
    background-position:-54px 0;
  }
  .fifthFloor>.fifthLeft>.artList>ul>li>.artItem>.top>div.topBg>span.top4{
    background-position:-81px 0;
  }
  .fifthFloor>.fifthLeft>.artList>ul>li>.artItem>.top>div.topBg>span.top5{
    background-position:-108px 0;
  }
  .fifthFloor>.fifthLeft>.artList>ul>li>.artItem>.top>div.topBg>span.top6{
    background-position:-135px 0;
  }
  .fifthFloor>.fifthLeft>.artList>ul>li>.artItem>.top>div.topBg>span.top7{
    background-position:-162px 0;
  }
  .fifthFloor>.fifthLeft>.artList>ul>li>.artItem>.top>div.topBg>span.top8{
    background-position:-189px 0;
  }
  .fifthFloor>.fifthLeft>.artList>ul>li>.artItem>.top>.topDetail{
    padding:5px;
    width:100%;
    text-align:center;
    border-left:1px solid #eee;
  }
  .fifthFloor>.fifthLeft>.artList>ul>li>.artItem>.top>.topDetail>p{
    margin:0;
    padding:0;
  }
  .fifthFloor>.fifthLeft>.artList>ul>li>.artItem>.top>.topDetail>p.artName{
    color:#37a;
  }
  .fifthFloor>.fifthLeft>.artList>ul>li>.artItem>.top>.topDetail>p.artStyle{
    font-size:12px;
    color:#666666;
  }
  .fifthFloor>.fifthLeft>.artList>ul>li>.artItem:hover>.top>.topDetail>p.artStyle{
    color:#e72f2f;
  }
  #popMusic{
    display: flex;
    flex-direction: column;
  }

  #popMusic>li{
    position: relative;
    height: 70px;
  }

  #popMusic>li>div{
    display: inline-block;
  }

  #popMusic>li>div:first-child{
    width: 15%;
  }

  #popMusic>li>div:first-child:hover{
    cursor: pointer;
  }

  #popMusic>li>div:nth-child(2){
    position: absolute;
    top: 50%;
    left: 40%;
    transform: translate(-50%,-50%)
  }

  #popMusic>li>div:last-child{
    font-size: 40px;
    font-weight: 100;
    position: absolute;
    right: 10%;
    transform: translateX(50%);
  }

  #popMusic>li>div>img{
    position: absolute;
    top: 50%;
    transform: translate(-50%,-50%);
    width: 14%;
    left: 3%;
    border-radius: 50%;
  }
  #popMusic>li>div>p{
    position: absolute;
    top: 48%;
    transform: translate(-50%,-50%);
    width: 14%;
    left: 25px;
    border-radius: 50%;
    color: white;
    font-size: 20px;
    opacity: 0;
  }

  #popMusic>li>div>p:hover{
    opacity: 0.7;
  }

</style>
