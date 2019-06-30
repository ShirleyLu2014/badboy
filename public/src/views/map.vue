<template>
<div>
 <!--地图容器-->
  <div id="containe" class="XSDFXPage"></div>
</div>
</template>
<script>
  export default {
    data () {
        return {
            
        }
  },
  mounted(){
  //创建Map实例
  var map = new BMap.Map("containe");
  // 初始化地图坐标  
  var point = new BMap.Point(116.4035,39.915); 
  // 初始化地图，设置中心点坐标和地图级别  
  map.centerAndZoom(point, 15);
  //添加地图类型控件
  map.addControl(new BMap.MapTypeControl());
  //设置地图显示的城市，
  map.setCurrentCity("杭州");
  //开启鼠标滚轮缩放
  map.enableScrollWheelZoom(true);
  // 设置定时器，对地图进行自动移动
  /*setTimeout(function(){
      map.panTo(new BMap.Point(113.262232,23.154345));
  }, 2000);
  setTimeout(function(){
      map.setZoom(14);
  },4000);*/
  //添加工具条、比例尺控件
   map.addControl(new BMap.ScaleControl({anchor:BMAP_ANCHOR_TOP_LEFT}));
    map.addControl(new BMap.NavigationControl());
    map.addControl(new BMap.NavigationControl({anchor:BMAP_ANCHOR_BOTTOM_RIGHT,type:BMAP_NAVIGATION_CONTROL_SMALL}));
}
   }
</script>
<style scoped>
    .XSDFXPage{
  height: 400px;
  width:1200px;
  margin:0 auto;
  margin-bottom: 40px;
  border:1px solid #f00;
  padding:0;
  margin-top:100px;
  font-family: "微软雅黑";
        }
</style>