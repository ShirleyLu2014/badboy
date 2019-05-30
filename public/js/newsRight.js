$(function(){
  $.ajax({
    url:"newsRight.html",
    type:"get",
    success:function(html){
      //console.log(html);
      $(html).replaceAll("section>#news>.newsRight");
      $(`<link rel="stylesheet" href="css/newsRight.css"/>`).appendTo("head");
    }
  })
})