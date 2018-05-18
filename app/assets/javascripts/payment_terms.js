"use strict";

const initIndex = () => {
  const source = document.getElementById("payment-terms-index-template").innerHTML;
  const template = Handlebars.compile(source);
  
  $.ajax({
    method: "get",
    url: "/payment_terms",
    dataType: "json"
  })
    .done((res) => {
      let data = new Object;
      data.paymentTerms = res;
      $("#content-main").html(template(data));
    })
    .fail((err) => {
      console.log(err);
    });
}

const init = () => {
  initIndex();
}

$(() => {
  init();
})