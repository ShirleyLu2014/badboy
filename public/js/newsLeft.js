$(function(){
  $.ajax({
    url:"newsLeft.html",
    type:"get",
    success:function(html){
      //console.log(html);
      $(html).replaceAll("section>#news>.newsLeft");
      $(`<link rel="stylesheet" href="css/newsLeft.css"/>`).appendTo("head");
    }
  })
})