$(".create button").click(function() {
  console.log("create!");
});

$(".delete button").click(function(e){
  console.log(e.target);
});

$(".update button").click(function(e){
  console.log($(e.target).data());
});

function displayCountriesList(data) {
  const template = Handlebars.compile(document.getElementById("country-template").innerHTML);
  const list = { countries: data };
  document.getElementById("content-table").innerHTML = template(list);
}

function getCountriesList() {
  fetch('/countries.json')
  .then(res => res.json())
  .then(data => displayCountriesList(data))
}

function handlebarsSetup() { 
  Handlebars.registerPartial('countryDetailsPartial', document.getElementById("country-details-partial").innerHTML)
}

function init() {
  handlebarsSetup();
  getCountriesList();
}

document.addEventListener("DOMContentLoaded", function(event) {
  init();
});

// $(function() {
//   init();
// })