<template>
<section>
  <div class="hr"></div>
  <div class="venue">
    <!--一楼音乐现场导航栏 -->
    <div class="venueHead">
      <h2>音乐现场</h2>
      <div class="userSearch">
        <form action="">
          <input type="text" name="searchKeyword" placeholder="搜索音乐现场" v-model="kws">
          <button @click="search(kws)">搜索</button>
        </form>
      </div>
    </div>
    <!-- 二楼城市切换 -->
    <div class="citySelect">
      <ul>
        <li>
          <a href="javascript:;" :class="{active:cid==0}" @click="citySelect(0)">全国</a>
        </li>
        <li v-for="(t,i) of cities" :key="i">
          <a href="javascript:;" :class="{active:cid==t.cid}" @click="citySelect(t.cid)">{{t.city}}</a>
        </li>
      </ul>
     <!-- <span>
        展开<i></i>
      </span>-->
    </div>
    <!-- 三楼地图 -->
    <div class="map" id="containe">
    </div>
    <!-- 四楼音乐现场列表 -->
    <div class="venueList">
      <div class="listItem" v-for="(v,i) of venue_list" :key="i">
        <div class="item">
          <router-link :to="`/venue_details/${v.vid}`">
            <img :src="v.vpic" alt="">
          </router-link>
          <div class="itemDetail">
            <router-link :to="`/venue_details/${v.vid}`" class="venueName">{{v.vname}}</router-link>
            <p class="venuePlace">{{v.vaddress}}</p>
            <router-link :to="`/venue_details/${v.vid}`" class="venueCount">最近有<span>{{v.tcount}}</span>场演出</router-link >
            <div class="aboutList">
              <router-link v-for="(t,j) of v.shows" :key="j" 
              :to="`/live_details/${t.tid}`">
                <img :src="t.sphoto" alt="">
              </router-link>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--四楼分页-->
    <page :pcount=pcount :pno=pno @pageChange="pageChange" @pageUp="pageUp"></page>
  </div>
</section>
</template>
<script>
import page from '@/components/page/page'
export default {
  data(){
    return {
      venue_list:[],
      cities:[],
      cid:0,
      kws:"",
      pno:"",
      psize:"",
      pcount:"",
      start:new Date().getTime()
    }
  },
  methods:{
    citySelect(cid){
      this.cid=cid;
    },
    pageChange(e){
      this.pno=e;
      this.getList();
    },
    pageUp(e){
      this.pno=e;
      this.getList();
    },
    pageDown(e){
      this.pno=e;
      this.getList();
    },
    getList(){
      console.log(this.cid+"#########");
      this.axios.get(
      "venues/list",
      {
        params:{
          cid:this.cid,
          kws:this.kws,
          pno:this.pno,
          psize:this.psize,
          start:this.start
        }
      }
    ).then(result=>{
      this.venue_list=result.data.result;
      this.pcount=result.data.pcount;
      console.log(result.data);
      console.log(this.venue_list);
      //console.log(this.pcount);
    })
    },
    search(kws){
      // this.cid=0;
      this.kws=kws;
      // this.getList();
      this.$router.push({path:'venues/list'});
    },
  },
  mounted(){
    //创建Map实例
    var map = new BMap.Map("containe");
    // 初始化地图坐标  
    var point = new BMap.Point(116.412498 ,39.883448); 
    // 初始化地图，设置中心点坐标和地图级别  
    map.centerAndZoom(point, 15);
    var marker = new BMap.Marker(point);        // 创建标注    
    map.addOverlay(marker);  //将标注添加到地图
    //添加地图类型控件
    map.addControl(new BMap.MapTypeControl());
    //设置地图显示的城市，
    // map.setCurrentCity("杭州");
    //开启鼠标滚轮缩放
    map.enableScrollWheelZoom(true);
    // 设置定时器，对地图进行自动移动
    /*setTimeout(function(){
        map.panTo(new BMap.Point(113.262232,23.154345));
    }, 2000);
    setTimeout(function(){
        map.setZoom(14);
    },4000);*/
  // 创建点坐标  
  // 编写自定义函数,创建标注
	function addMarker(point){
	  var marker = new BMap.Marker(point);
	  map.addOverlay(marker);
	}
	// 随机向地图添加25个标注
	var bounds = map.getBounds();
	var sw = bounds.getSouthWest();
	var ne = bounds.getNorthEast();
	var lngSpan = Math.abs(sw.lng - ne.lng);
	var latSpan = Math.abs(ne.lat - sw.lat);
	for (var i = 0; i < 25; i ++) {
		var point = new BMap.Point(sw.lng + lngSpan * (Math.random() * 0.7), ne.lat - latSpan * (Math.random() * 0.7));
		addMarker(point);
	}
  },
 created(){
    // 获取现场列表
  this.getList(),
  this.axios.get(
    "cities"
  ).then(result=>{
    this.cities=result.data;
    console.log(this.cities);
  })
  },
  watch:{
    kws(){this.cid=0;this.getList()},
    cid(){this.getList();this.kws=""}
  },
  components:{
    page
  }
}
</script>
<style scoped src="../../public/css/venue.css">
</style>