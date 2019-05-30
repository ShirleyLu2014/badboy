$(function(){
  $.ajax({
    url:"newsDetailsRight.html",
    type:"get",
    success:function(html){
      //console.log(html);
      $(html).replaceAll("section>#news>.newsDetailsRight");
      $(`<link rel="stylesheet" href="css/newsDetailsRight.css"/>`).appendTo("head");
    }
  })
})