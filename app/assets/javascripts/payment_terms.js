"use strict";

$(document).on('turbolinks:load', () => {
  init();
});

const init = () => {
  const pathname = window.location.pathname;
  if (pathname.endsWith("/payment_terms") || pathname.endsWith("/payment_terms/")) {
    $("div.edit").remove();
    $("div.delete").remove();
    initIndex();
  } else if (pathname.slice(-4).includes("new") || pathname.slice(-5).includes("edit")) {
    $("div.create").remove();
    $("div.edit").remove();
    $("div.delete").remove();
    HandlebarsFormSetup();
    initForm();    
  } else {
    $("div.create").remove();
    initShow();
  }
}

const initIndex = () => {
  const source = document.getElementById("payment-terms-index-template").innerHTML;
  const template = Handlebars.compile(source);
  
  ajaxData("get", "/payment_terms", {})
    .done((res) => {
      let data = new Object;
      data.paymentTerms = res;
      $("#content-main").html(template(data));
    })
    .fail((err) => {
      console.log(err);
    });
}

const HandlebarsFormSetup = () => {
  Handlebars.registerHelper("displayOption", (item) => {
    if (item.selected) {
      return new Handlebars.SafeString(`<option value="${item.id}" selected>${item.name}</option>`)
    } else {
      return new Handlebars.SafeString(`<option value="${item.id}">${item.name}</option>`)
    }
  })
}

const initForm = () => {
  const pathname = window.location.pathname;
  const source = document.getElementById("payment-term-form-template").innerHTML;
  const template = Handlebars.compile(source);  
  
  if ((pathname === "/payment_terms/new") || (pathname === "/payment_terms/new/")) {

    ajaxData("get", "/payment_options", {})
      .done((res) => {
        let data = new Object;
        data.paymentOptions = res;
        $("#content-main").html(template(data));
        $("form#new_payment_term").on("submit", submitPaymentTermForm);
      })
      .fail((err) => {
        console.log(err);
      });
  } else {
    const getPaymentTerm = ajaxData("get", pathname, {}),
          getPaymentOptions = ajaxData("get", "/payment_options", {})
    $.when(getPaymentTerm, getPaymentOptions)
      .done((paymentTermData, paymentOptionsList) => {
        let data = new Object;
        data.paymentTerm = paymentTermData[0];
        data.paymentOptions = paymentOptionsList[0];
        const optionId = data.paymentTerm.payment_option.id
        data.paymentOptions.map((e) => {
          if (e.id == optionId) { e.selected = true; }
        });
        $("#content-main").html(template(data));
        $("form#payment_term").on("submit", submitPaymentTermForm);
      })
      .fail((err) => {
        console.log("err", err);
      })
  }
}

const submitPaymentTermForm = (e) => {
  e.preventDefault();
  const $form = $(e.target);
  const method = $form.attr("method");
  const action = $form.attr("action");
  const params = $form.serialize();

  ajaxData(method, action, params)
    .done((res) => {
      window.location.href = `/payment_terms/${res.id}`;
    })
    .fail((err) => {
      console.log(err);
    });
}

const initShow = () => {
  const pathname = window.location.pathname;
  const source = document.getElementById("payment-term-show-template").innerHTML;
  const template = Handlebars.compile(source);

  ajaxData("get", pathname, {})
    .done((res) => {
      $("#content-main").html(template(res));
    })
    .fail((err) => {
      console.log(err);
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
