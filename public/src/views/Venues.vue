<template>
<section>
  <div class="hr"></div>
  <div class="venue">
    <!--一楼音乐现场导航栏 -->
    <div class="venueHead">
      <h2>音乐现场</h2>
      <div class="userSearch">
        <form action="">
          <input type="text" name="searchKeyword" placeholder="搜索音乐现场">
          <button>搜索</button>
        </form>
      </div>
    </div>
    <!-- 二楼城市切换 -->
    <div class="citySelect">
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
          <a href="">重庆</a>
        </li>
        <li>
          <a href="">西安</a>
        </li>
        <li>
          <a href="">长沙</a>
        </li>
        <li>
          <a href="">南京</a>
        </li>
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
          <a href="">重庆</a>
        </li>
        <li>
          <a href="">西安</a>
        </li>
        <li>
          <a href="">长沙</a>
        </li>
        <li>
          <a href="">南京</a>
        </li>
        <li>
          <a href="">西安</a>
        </li>
        <li>
          <a href="">长沙</a>
        </li>
        <li>
          <a href="">南京</a>
        </li>
      </ul>
      <span>
        展开<i></i>
      </span>
    </div>
    <!-- 三楼地图 -->
    <div class="map">
      地图
    </div>
    <!-- 四楼音乐现场列表 -->
    <div class="venueList">
      <div class="listItem" v-for="(t,i) of venue_list" :key="i">
        <div class="item">
          <router-link :to="`/venue_details/${t.vid}`">
            <img :src="t.vpic" alt="">
          </router-link>
          <div class="itemDetail">
            <router-link :to="`/venue_details/${t.vid}`" class="venueName">{{t.vname}}</router-link>
            <p class="venuePlace">{{t.vaddress}}</p>
            <router-link :to="`/venue_details/${t.vid}`" class="venueCount">最近有<span>{{t.shows.length}}</span>场演出</router-link >
            <div class="aboutList">
              <router-link v-for="(t,i) of t.shows" :key="i" 
              :to="`/live_details/${t.sid}`">
                <img :src="t.sphoto" alt="">
              </router-link>
            </div>
          </div>
        </div>
      </div>
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
      venue_list:{},
      venue_live:{},
      vid:""
    }
  },
  created(){
    this.axios.get(
      "venues/list"
    ).then(result=>{
      this.venue_list=result.data.result;
      console.log(result.data);
    })
    this.axios.get(
      "tours/list",
      {
        params:{
          vid:this.vid,
          }
      }
    ).then(result=>{
      this.venue_live=result.data;
      console.log(result.data);
    })
  }
}
</script>
<style scoped src="../../public/css/venue.css">
</style>