$(function(){
  $.ajax({
    url:"memberLogin.html",
    type:"get",
    success:function(html){
      //console.log(html);
      $(html).replaceAll("#section>.member_center");
      $(`<link rel="stylesheet" href="css/memberLogin.css"/>`).appendTo("head");
    }
  })
})