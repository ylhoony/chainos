$(".create i").click(function() {
  console.log("create!");
});

$(".delete i").click(function(e){
  console.log(e.target);
});

$(".update i").click(function(e){
  console.log($(e.target).data());
});

function getCountriesList() {
  fetch('/countries.json')
  .then(res => res.json())
  .then(data => console.log(data))
}

function handlebarSetup() {

}

function init() {
  // handlebarSetup();
  getCountriesList();
}

document.addEventListener("DOMContentLoaded", function(event) {
  init();
});
