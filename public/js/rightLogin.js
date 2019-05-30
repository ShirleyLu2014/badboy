$(function(){
  $.ajax({
    url:"rightLogin.html",
    type:"get",
    success:function(html){
      //console.log(html);
      $(html).replaceAll("#section>.right_login");
      $(`<link rel="stylesheet" href="css/rightLogin.css"/>`).appendTo("head");
      $(`<link rel="stylesheet" href="css/login.css"/>`).appendTo("head");
    }
  })
})