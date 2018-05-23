"use strict";

$(document).on('turbolinks:load', () => {
  init();
});

const init = () => {
  const pathname = window.location.pathname;
  if ((pathname === "/payment_options") || (pathname === "/payment_options/")) {
    $("div.edit").remove();
    $("div.delete").remove();
    initIndex();
  } else if (pathname.slice(-4).includes("new") || pathname.slice(-5).includes("edit")) {
    $("div.create").remove();
    $("div.edit").remove();
    $("div.delete").remove();
    initForm();
  } else {
    $("div.create").remove();
    $("div.delete").remove();
    initShow();
  }
}

const initIndex = () => {
  const source = document.getElementById("payment-option-index-template").innerHTML;
  const template = Handlebars.compile(source);

  ajaxData("get", "/payment_options", {})
    .done((res) => {
      let data = new Object;
      data.paymentOptions = res;
      $("#content-main").html(template(data));
    })
    .fail((err) => {
      console.error(err);
    });
}

const initForm = () => {
  const pathname = window.location.pathname;
  const source = document.getElementById("payment-option-form-template").innerHTML;
  const template = Handlebars.compile(source);
  
  if ((pathname === "/payment_options/new") || (pathname === "/payment_options/new/")) {
    $("#content-main").html(template());
  } else {
    let data = new Object;

    ajaxData("get", pathname, {})
      .done((res) => {
        $("#content-main").html(template(res));
        $("form#payment_option").on("submit", submitPaymentOptionForm);
      })
      .fail((err) => {
        console.log(err);
      });
  }
  $("form#new_payment_option").on("submit", submitPaymentOptionForm);
}

const submitPaymentOptionForm = (e) => {
  e.preventDefault();
  const $form = $(e.target);
  const method = $form.attr("method");
  const action = $form.attr("action");
  const params = $form.serialize();

  ajaxData(method, action, params)
    .done((res) => {
      window.location.href = `/payment_options/${res.id}`;
    })
    .fail((err) => {
      console.error(err);
    });
}

const initShow = () => {
  const pathname = window.location.pathname;
  const source = document.getElementById("payment-option-show-template").innerHTML;
  const template = Handlebars.compile(source);

  ajaxData("get", pathname, {})
    .done((res) => {
      $("#content-main").html(template(res));
    });
}

const ajaxData = (method, dataURL, params) => {
  return $.ajax({
    method: method,
    url: dataURL,
    data: params,
    dataType: "json"
  });
}
