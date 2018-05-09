function displayCurrenciesList(data) {
  const template = Handlebars.compile(document.getElementById("currency-template").innerHTML);
  const list = { currencies: data };
  document.getElementById("content-table").innerHTML = template(list);

  $(".update button").click(function(e){
    $row = $(this).parents(".table-content").find("input");
    const chunk = {
        currency: {
          name: $row[0].value,
          alpha_3_code: $row[1].value,
          numeric_code: $row[2].value,
          status: $row[3].checked
        }
    }

    $.ajax({
      url: `/currencies/${$(this).data("id")}`,
      method: "put",
      data: chunk,
      dataType: "json"
    })
    .done((res) => {
      getCurrenciesList();
    })
    .fail((err) => {
      alert( "error" );
    })

  });

  $(".delete button").click(function(e){
    $.ajax({
      url: `/currencies/${$(this).data("id")}`,
      method: "delete",
      dataType: "json"
    })
    .done((res) => {
      getCurrenciesList();
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

function getCurrenciesList() {
  $.ajax({
    url: "/currencies",
    method: "get",
    dataType: "json"
  })
  .done((res) => {
    displayCurrenciesList(res);
  })
  .fail((err) => {
    console.log("error!");
  })
}

function handlebarsSetup() { 
  Handlebars.registerPartial('currencyDetailsPartial', document.getElementById("currency-details-partial").innerHTML)
}

function init() {
  handlebarsSetup();
  getCurrenciesList();
}

document.addEventListener("DOMContentLoaded", function(event) {
  init();
});

$(function() {
  $(".create button").click(function() {
    $(".modal").css("display", "unset");
    const template = Handlebars.compile(document.getElementById("currency-form-template").innerHTML);
    document.getElementById("modal-content-currency").innerHTML = template();
    const top = (window.innerHeight - $("#modal-content-currency").height())/2;
    const left = (window.innerWidth - $("#modal-content-currency").width())/2;
    
    $("#modal-content-currency").css("top", top);
    $("#modal-content-currency").css("left", left);

    $("form#new_currency").submit(function(e) {
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
        getCurrenciesList();
      })
      .fail((err) => {
        alert( "error" );
      })
    });
  });
});