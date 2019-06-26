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
      <div class="liveCity" :class="{hide:cityHide}">
        <span>演出城市</span>
        <div>
          <ul>
            <li>
              <a :class="{active:cid==0}" href="javascript:;" @click="citySelect(0)">全国</a>
            </li>
            <li v-for="(t,i) of cities" :key="i">
              <a :class="{active:cid==t.cid}" href="javascript:;" @click="citySelect(t.cid)" :cid="t.cid">{{t.city}}</a>
            </li>
          </ul>
        </div>
        <span>
          <a href="javascript:;" @click="toggleCity">展开</a> 
        </span>
      </div>
      <!-- 演出现场 -->
      <div class="liveHouse">
          <span>音乐现场</span>
          <div>
            <ul>
              <li>
                <a :class="{active:vid==0}" href="javascript:;" @click="venueSelect(0)">全国</a>
              </li>
              <li v-for="(t,i) of venues" :key="i">
                <a :class="{active:vid==t.vid}" href="javascript:;" @click="venueSelect(t.vid)">{{t.vname}}</a>
              </li>
            </ul>
          </div>
          <span>
            <a href="javascript:;">展开</a> 
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
      cityHide:true,
      cid:0,
      vid:0,
      startime:0,
      endtime:0,
      stid:0,
      lives_list:[],   //演出列表
      cities:[],       //演出城市列表
      venues:[]
    }
  },
  methods:{
    toggleCity(){
      this.cityHide=!this.cityHide;
    },
    allLives(){
      var {cid,vid,starttime,endtime,stid}=this;
      this.axios.get(
        "tours/list",
        {
          params:{
            cid,vid,starttime,endtime,stid
          }
        }
      ).then(result=>{
        this.lives_list=result.data.result;
        //console.log(result.data.result);
      })
    },
    citySelect(cid){
      this.cid=cid;
    },
    venueSelect(vid){
      this.vid=vid;
    },
    styleSelect(stid){
      this.stid=stid;
    },
    allVenues(){
      //演出场地请求
      this.axios.get(
        "venues",
        {
          params:{
            cid:this.cid
          }
        }
      ).then(result=>{
        this.venues=result.data;
        //console.log(this.cities);
      })
    }
  },
  created(){
    //演出列表请求
    this.allLives()
    //演出场次请求
    this.allVenues()
    //演出城市请求
    this.axios.get(
      "cities"
    ).then(result=>{
      this.cities=result.data;
      //console.log(this.cities);
    })
  },
  watch:{
    cid(){ this.allLives(); this.allVenues() },
    vid(){ this.allLives(); },
    stid(){ this.allLives() },
    starttime(){ this.allLives() },
    endtime(){ this.allLives() },
  }
}
</script>
<style scoped src="../../public/css/lives.css">
</style>