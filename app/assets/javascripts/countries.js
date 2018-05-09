function displayCountriesList(data) {
  const template = Handlebars.compile(document.getElementById("country-template").innerHTML);
  const list = { countries: data };
  document.getElementById("content-table").innerHTML = template(list);

  $(".update button").click(function(e){
    $row = $(this).parents(".table-content").find("input");
    const chunk = {
        country: {
          name: $row[0].value,
          alpha_2_code: $row[1].value,
          alpha_3_code: $row[2].value,
          numeric_code: $row[3].value,
          status: $row[4].checked
        }
    }

    $.ajax({
      url: `/countries/${$(this).data("id")}`,
      method: "put",
      data: chunk,
      dataType: "json"
    })
    .done((res) => {
      getCountriesList();
    })
    .fail((err) => {
      alert( "error" );
    })

  });

  $(".delete button").click(function(e){
    $.ajax({
      url: `/countries/${$(this).data("id")}`,
      method: "delete",
      dataType: "json"
    })
    .done((res) => {
      getCountriesList();
    })
    .fail((err) => {
      console.log("error!");
    })
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
  $.ajax({
    url: "/countries",
    method: "get",
    dataType: "json"
  })
  .done((res) => {
    displayCountriesList(res);
  })
  .fail((err) => {
    console.log("error!");
  })
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
    $(".modal").css("display", "unset");
    const template = Handlebars.compile(document.getElementById("country-form-template").innerHTML);
    document.getElementById("modal-content-country").innerHTML = template();
    const top = (window.innerHeight - $("#modal-content-country").height())/2;
    const left = (window.innerWidth - $("#modal-content-country").width())/2;
    
    $("#modal-content-country").css("top", top);
    $("#modal-content-country").css("left", left);

    $("form#new_country").submit(function(e) {
      e.preventDefault();
      const $form = $(this);
      const action = $form.attr("action");
      const params = $form.serialize();

      $.ajax({
        url: action,
        method: "post",
        data: params,
        dataType: "json"
      })
      .done((res) => {
        $(".modal").css("display", "none");
        getCountriesList();
      })
      .fail((err) => {
        alert( "error" );
      })
    });
  });
});