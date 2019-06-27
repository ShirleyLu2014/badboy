<template>
  <section>
    <div class="hr"></div>
    <div class="venue">
      <!--一楼音乐现场导航栏 -->
      <div class="venueHead">
        <h2>音乐人</h2>
        <div class="userSearch">
          <form action="">
            <input type="text" name="searchKeyword" placeholder="搜索艺人" v-model="kws">
            <button @click="search(kws)">搜索</button>
          </form>
        </div>
      </div>
      <!-- 二楼音乐风格切换 -->
      <div class="citySelect">
        <ul>
          <li>
            <a href="javascript:;" @click="styleSelect(0)">全部</a>
          </li>
          <li v-for="(t,i) of styles" :key="i">
            <a href="javascript:;" @click="styleSelect(t.stid)">{{t.stname}}</a>
          </li>
        </ul>
        <!-- <span>
          展开<i></i>
        </span> -->
      </div>
      <!-- 四楼音乐现场列表 -->
      <div class="artList">
        <ul>
          <li v-for="(t,i) of artists_list" :key="i">
            <router-link :to="`/artist_details/${t.aid}`">
              <img :src="t.aphoto" alt="">
            </router-link>
            <a href="" class="artName">{{t.aname}}</a>
            <p>{{t.stname}}</p>
            <a href="" class="artCount">最近有<span>{{t.fcount}}</span>场活动</a>
          </li>
        </ul>
      </div>
      <!--四楼分页-->
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
      stid:0,
      kws:"",
      pno:"",
      psize:"",
      artists_list:[],   //音乐人列表
      styles:[]
    }
  },
  methods:{
    styleSelect(stid){
      this.stid=stid;
    },
    search(kws){
      this.kws=kws;
      this.allArtists();
    },
    allArtists(){
      this.axios.get(
      "artists/list",
      {
        params:{
          stid:this.stid,
          kws:this.kws,
          pno:this.pno,
          psize:this.psize
        }
      }
    ).then(result=>{
      this.artists_list=result.data.result;
      console.log(result.data.result);
    })
    }
  },
  created(){
    //即将上演
    this.allArtists(),
    this.axios.get(
       "styles"
    ).then(result=>{
      this.styles=result.data;
     // console.log(this.styles);
    })
  },
  watch:{
    stid(){this.allArtists()},
    kws(){this.allArtists()}
  }
}
</script>
<style scoped src="../../public/css/artist.css">
</style>