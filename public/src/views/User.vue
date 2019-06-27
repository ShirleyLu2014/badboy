<template>
  <section>
    <div class="ucmain">
      <div class="auto-width clearfix">
        <div class="userLeft">
          <div class="photobox">
            <div class="photo">
              <img src="image/index/default-photo.png" alt="">
            </div>
          </div>
          <div class="userNav">
            <dl>
              <dt>我的资料</dt>
              <dd>
                <a href="">
                  <i class="icon10"></i>我的资料
                </a>
              </dd>
              <dd>
                <a href="">
                  <i class="icon11"></i>收藏的演出
                </a>
              </dd>
            </dl>
            <dl>
              <dt>订单相关</dt>
              <dd>
                <a href="">
                  <i class="icon12"></i>演出订单
                </a>
              </dd>
            </dl>
          </div>
        </div>
        <my-sidebar></my-sidebar>
        <router-view><router-view/>
      </div>
    </div>
  </section> 
  <!--<div>
    <h2>这里是用户界面</h2>
    <my-sidebar></my-sidebar>
    <router-view/>
  </div>-->
</template>
<script>
export default {
  
}
</script>

<style scoped src="../../public/css/user.css"">

</style>
