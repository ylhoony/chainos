"use strict";

$(document).on('turbolinks:load', () => {
  init();
});

const init = () => {
  const pathname = window.location.pathname;
  
  if (pathname.endsWith("/accounts") || pathname.endsWith("/accounts/")) {
    const createBtn = '<div class="create"><button class="btn-sqr-lg"><i class="far fa-plus fa-lg"></i></button></div>';
    $("#content-header").append(createBtn);
    handlebarsIndexSetup();
    initIndex();
  } else if (pathname.slice(-4).includes("new") || pathname.slice(-5).includes("edit")) {
    handlebarsFormSetup();
    initForm();
  } else {
    initShow();
  }
}

const handlebarsIndexSetup = () => {
  Handlebars.registerPartial("accountListPartial", document.getElementById("account-list-partial").innerHTML);
}

const initIndex = () => {
  let data = new Object;
  const source = document.getElementById("account-list-template").innerHTML;
  const template = Handlebars.compile(source);

  ajaxData("get", "/accounts", {})
    .done((res) => {
      data.accounts = res;
      $("#content-main").html(template(data));
    })
}

const handlebarsFormSetup = () => {
  Handlebars.registerHelper("displayOptions", (item) => {
    return new Handlebars.SafeString(`<option value="${item.id}">${item.name}</option>`);
  })
}

const initForm = () => {
  let data = new Object;
  const source = document.getElementById("account-form-template").innerHTML;
  const template = Handlebars.compile(source);

  const getCountries = ajaxData("get", "/countries/active", {}),
        getCurrencies = ajaxData("get", "/currencies/active", {})

  $.when(getCountries, getCurrencies)
    .done((countries, currencies) => {
      let data = new Object;
      data.countries = countries[0];
      data.currencies = currencies[0];
      
      $("#content-main").html(template(data));

      $("form#new_account").on("submit", createNewAccount);
    })
    .fail((errCountries, errCurrencies) => {
      // Update with better way to handle
      console.log(errCountries);
      console.log(errCurrencies);
    });
}

const createNewAccount = (e) => {
  e.preventDefault();
  const $form = $(e.target);
  const action = $form.attr("action");
  const params = $form.serialize();

  ajaxData("post", action, params)
    .done((res) => {
      window.location.href = "/dashboard"
    })
    .fail((err) => {
      console.error(err);
    });
}

const initShow = () => {
  // Update when creating setting page or it is now needed
  console.log("initShow!");
}

const ajaxData = (method, dataURL, params) => {
  return $.ajax({
    method: method,
    url: dataURL,
    data: params,
    dataType: "json"
  });
}
