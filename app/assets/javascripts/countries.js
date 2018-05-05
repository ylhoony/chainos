$(".create i").click(function() {
  console.log("create!");
});

$(".delete i").click(function(e){
  console.log(e.target);
});

$(".update i").click(function(e){
  console.log($(e.target).data());
});



function eventListener () {
  // $(".create i").click(function() {
  //   console.log("create!");
  // });

  // $(".delete i").click(function(){
  //   console.log("delete!");
  // });

  // $(".update i").click(function(){
  //   console.log("update!");
  // });

}

$(function() {
  eventListener();
});

