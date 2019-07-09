<template>
  <div class="showCalendar">
    <div class="calendarHead">
      <div class="calendarTitle">
        <h2 class="h2">演出日历</h2>
      </div>
      <div class="calendarDate">
        <div class="calendarYear">
          <span class="leftShift" v-show="!(y==(new Date().getFullYear())&&(m==new Date().getMonth()+1))"></span>
          <span class="year">{{this.y}}年</span>
          <span class="month">{{this.m}}月</span>
          <span class="rightShift"></span>
        </div>
      </div>
    </div>
    <div class="calendarMain">
      <table cellpadding="0" cellspacing="0">
        <tbody>
          <tr class="weekHead">
            <td>
              <span>周一</span>
            </td>
            <td>
              <span>周二</span>
            </td>
            <td>
              <span>周三</span>
            </td>
            <td>
              <span>周四</span>
            </td>
            <td>
              <span>周五</span>
            </td>
            <td>
              <span>周六</span>
            </td>
            <td>
              <span>周日</span>
            </td>
          </tr>
          <tr v-for="(arr,i) of result" class="dateTd" :key="i">
            <td v-for="(date,j) of arr" :key="j" class="preMonthDay">
              <div dateview="2019-05-27" class="activity">
                <span class="span redDot redSquare"></span>
                <!--<span class="redSquare">{{}}场</span>-->
                <i>{{date?date.d:""}}</i>
              </div>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</template>
<script>
export default {
  data(){
    return {
      y:new Date().getFullYear(),
      m:new Date().getMonth()+1,
      result:[
      ]
    }
  },
  methods:{
    loadCalendar(){
      this.axios.get(
        "tours/bymonth",
        {
          params:{
            y:this.y,
            m:this.m
          }
        }
      ).then(res=>{
        var arr=res.data;
        var day=new Date(`${this.y}-${this.m}-1`).getDay();
        var arr1=new Array(day);
        var arr2=[];
        for(var date of arr){
          arr2[Number(date.d)-1]=date;
        }
        arr=[].concat(arr1,arr2);
        var result=[];
        for(var i=0;i<arr.length;i+=7){
          this.result.push(arr.slice(i,i+7))
        }
        console.log(this.result);
      })
    }
  },
  created(){
    this.loadCalendar();
  }
}
</script>
<style scoped>
  h2.h2{ 
    color:#666666 !important;
    font-size:20px !important;
  }
  .showCalendar>.calendarHead{
    height:50px;
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
    overflow: hidden;
  }
  .showCalendar>.calendarHead>.calendarDate>.calendarYear>span.leftShift{
    display: inline-block;
    vertical-align: middle;
    width: 24px;
    height: 24px;
    background-image: url("/images/index/droll-icon.png");
    background-position: -126px 0px;
    cursor: pointer;
  }
  .showCalendar>.calendarHead>.calendarDate>.calendarYear>span.rightShift{
    display: inline-block;
    vertical-align: middle;
    width: 24px;
    height: 24px;
    background-image: url("/images/index/droll-icon.png");
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
</style>


