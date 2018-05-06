function displayCountriesList(data) {
  const template = Handlebars.compile(document.getElementById("country-template").innerHTML);
  const list = { countries: data };
  document.getElementById("content-table").innerHTML = template(list);

  $(".update button").click(function(e){
    // console.log("update", e.target);
    $parent = $(e.target).parents(".table-content").find("input");
    console.log($parent);
  });

  $(".delete button").click(function(e){
    console.log("delete", e.target);
  });

  $(".input-text").on("click", function(e){
    let $selector = $(e.target);
    if ($selector.prop("disabled")) {
      $("input[type='text']").prop("disabled", true);
      $selector.prop("disabled", false);
      $selector[0].setSelectionRange(0, 0);
    }
  });
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
});