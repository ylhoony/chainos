$(".create i").click(function() {
  console.log("create!");
});

$(".delete i").click(function(e){
  console.log(e.target);
});

$(".update i").click(function(e){
  console.log($(e.target).data());
});

document.addEventListener("DOMContentLoaded", function(event) {
  console.log("hello, DOM content load!")
});
