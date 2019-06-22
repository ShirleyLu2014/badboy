<template>
  <section>
    <div class="hr"></div>
    <div class="venue">
      <!--一楼音乐现场导航栏 -->
      <div class="venueHead">
        <h2>音乐人</h2>
        <div class="userSearch">
          <form action="">
            <input type="text" name="searchKeyword" placeholder="搜索艺人">
            <button>搜索</button>
          </form>
        </div>
      </div>
      <!-- 二楼城市切换 -->
      <div class="citySelect">
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
            <a href="">独立</a>
          </li>
          <li>
            <a href="">Disco</a>
          </li>
          <li>
            <a href="">跳舞</a>
          </li>
          <li>
            <a href="">金属</a>
          </li>
          <li>
            <a href="">世界音乐</a>
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
          <!--<li>
            <a href="">
              <img src="images/artists/dyxq01.jpg" alt="">
            </a>
            <a href="" class="artName">岛屿心情</a>
            <p>民谣</p>
            <a href="" class="artCount">最近有<span>1</span>场活动</a>
          </li>
          <li>
            <a href="">
              <img src="images/artists/dyxq01.jpg" alt="">
            </a>
            <a href="" class="artName">岛屿心情</a>
            <p>民谣</p>
            <a href="" class="artCount">最近有<span>1</span>场活动</a>
          </li>
          <li>
            <a href="">
              <img src="images/artists/dyxq01.jpg" alt="">
            </a>
            <a href="" class="artName">岛屿心情</a>
            <p>民谣</p>
            <a href="" class="artCount">最近有<span>1</span>场活动</a>
          </li>
          <li>
            <a href="">
              <img src="images/artists/dyxq01.jpg" alt="">
            </a>
            <a href="" class="artName">岛屿心情</a>
            <p>民谣</p>
            <a href="" class="artCount">最近有<span>1</span>场活动</a>
          </li>
          <li>
            <a href="">
              <img src="images/artists/dyxq01.jpg" alt="">
            </a>
            <a href="" class="artName">岛屿心情</a>
            <p>民谣</p>
            <a href="" class="artCount">最近有<span>1</span>场活动</a>
          </li>
          <li>
            <a href="">
              <img src="images/artists/dyxq01.jpg" alt="">
            </a>
            <a href="" class="artName">岛屿心情</a>
            <p>民谣</p>
            <a href="" class="artCount">最近有<span>1</span>场活动</a>
          </li>
          <li>
            <a href="">
              <img src="images/artists/dyxq01.jpg" alt="">
            </a>
            <a href="" class="artName">岛屿心情</a>
            <p>民谣</p>
            <a href="" class="artCount">最近有<span>1</span>场活动</a>
          </li>
          <li>
            <a href="">
              <img src="images/artists/dyxq01.jpg" alt="">
            </a>
            <a href="" class="artName">岛屿心情</a>
            <p>民谣</p>
            <a href="" class="artCount">最近有<span>1</span>场活动</a>
          </li>
          <li>
            <a href="">
              <img src="images/artists/dyxq01.jpg" alt="">
            </a>
            <a href="" class="artName">岛屿心情</a>
            <p>民谣</p>
            <a href="" class="artCount">最近有<span>1</span>场活动</a>
          </li>
          <li>
            <a href="">
              <img src="images/artists/dyxq01.jpg" alt="">
            </a>
            <a href="" class="artName">岛屿心情</a>
            <p>民谣</p>
            <a href="" class="artCount">最近有<span>1</span>场活动</a>
          </li>
          <li>
            <a href="">
              <img src="images/artists/dyxq01.jpg" alt="">
            </a>
            <a href="" class="artName">岛屿心情</a>
            <p>民谣</p>
            <a href="" class="artCount">最近有<span>1</span>场活动</a>
          </li>
          <li>
            <a href="">
              <img src="images/artists/dyxq01.jpg" alt="">
            </a>
            <a href="" class="artName">岛屿心情</a>
            <p>民谣</p>
            <a href="" class="artCount">最近有<span>1</span>场活动</a>
          </li>
          <li>
            <a href="">
              <img src="images/artists/dyxq01.jpg" alt="">
            </a>
            <a href="" class="artName">岛屿心情</a>
            <p>民谣</p>
            <a href="" class="artCount">最近有<span>1</span>场活动</a>
          </li>
          <li>
            <a href="">
              <img src="images/artists/dyxq01.jpg" alt="">
            </a>
            <a href="" class="artName">岛屿心情</a>
            <p>民谣</p>
            <a href="" class="artCount">最近有<span>1</span>场活动</a>
          </li>
          <li>
            <a href="">
              <img src="images/artists/dyxq01.jpg" alt="">
            </a>
            <a href="" class="artName">岛屿心情</a>
            <p>民谣</p>
            <a href="" class="artCount">最近有<span>1</span>场活动</a>
          </li>
          <li>
            <a href="">
              <img src="images/artists/dyxq01.jpg" alt="">
            </a>
            <a href="" class="artName">岛屿心情</a>
            <p>民谣</p>
            <a href="" class="artCount">最近有<span>1</span>场活动</a>
          </li>
          <li>
            <a href="">
              <img src="images/artists/dyxq01.jpg" alt="">
            </a>
            <a href="" class="artName">岛屿心情</a>
            <p>民谣</p>
            <a href="" class="artCount">最近有<span>1</span>场活动</a>
          </li>
          <li>
            <a href="">
              <img src="images/artists/dyxq01.jpg" alt="">
            </a>
            <a href="" class="artName">岛屿心情</a>
            <p>民谣</p>
            <a href="" class="artCount">最近有<span>1</span>场活动</a>
          </li>
          <li>
            <a href="">
              <img src="images/artists/dyxq01.jpg" alt="">
            </a>
            <a href="" class="artName">岛屿心情</a>
            <p>民谣</p>
            <a href="" class="artCount">最近有<span>1</span>场活动</a>
          </li>-->
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
      artists_list:[],   //音乐人列表
    }
  },
  created(){
    //即将上演
    this.axios.get(
      "artists/list"
    ).then(result=>{
      this.artists_list=result.data.result;
      console.log(result.data.result);
    })
  }
}
</script>
<style scoped>
  @import "../../public/css/artist.css"
</style>