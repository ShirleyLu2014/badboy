$(function(){
  $.ajax({
    url:"rightRegister.html",
    type:"get",
    success:function(html){
      //console.log(html);
      $(html).replaceAll("#section>.right_register");
      $(`<link rel="stylesheet" href="css/rightRegister.css"/>`).appendTo("head");
      $(`<link rel="stylesheet" href="css/register.css"/>`).appendTo("head");
    }
  })
})