function displayCountriesList(data) {
  const template = Handlebars.compile(document.getElementById("country-template").innerHTML);
  const list = { countries: data };
  document.getElementById("content-table").innerHTML = template(list);

  $(".update button").click(function(e){
    console.log("update", e.target);
  });

  $(".delete button").click(function(e){
    console.log("delete", e.target);
  });

  $(".input-text").on("click", function(e){
    // reset();
    // $( "input[type='text']" ).prop( "disabled", true);
    // $(".input-text").prop("disabled", true);
    $(e.target).prop("disabled", false);
  })
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

$(function() {
  $(".create button").click(function() {
    console.log("create!");
  });
})