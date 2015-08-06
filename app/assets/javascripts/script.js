$( document).ready (function(){
  // your code here?


  $("#poultry").on( "click" , function(){
    $(".hide").addClass("temps_hide");
    $("div.poultry").removeClass("temps_hide");
  });
  $("#beef").on( "click" , function(){
    $(".hide").addClass("temps_hide");
    $("div.beef").removeClass("temps_hide");
  });
  $("#pork").on( "click" , function(){
    $(".hide").addClass("temps_hide");
    $("div.pork").removeClass("temps_hide");
  });
  $("#lamb").on( "click" , function(){
    $(".hide").addClass("temps_hide");
    $("div.lamb").removeClass("temps_hide");
  });

})
