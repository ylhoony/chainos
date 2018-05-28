"use strict";

$(document).on('turbolinks:load', () => {
  const pathname = window.location.pathname;
  if (pathname.includes("customers")) {
    init();
  }
});

class PaymentTerm {
  constructor(id, name, selected) {
    this.id = id;
    this.name = name;
    if (selected) {
      this.selected = true;
    } else {
      this.selected = false;
    }
  }
}

const init = () => {
  const pathname = window.location.pathname;
  if (pathname.endsWith("/customers") || pathname.endsWith("/customers/")) {
    $("div.edit").remove();
    $("div.delete").remove();
    initIndex();
  } else if (pathname.slice(-4).includes("new") || pathname.slice(-5).includes("edit")) {
    $("div.create").remove();
    $("div.edit").remove();
    $("div.delete").remove();
    handlebarsFormSetup();
    initForm();    
  } else {
    $("div.create").remove();
    initShow();
  }
}

const initIndex = () => {
  const source = document.getElementById("customers-index-template").innerHTML;
  const template = Handlebars.compile(source);
  
  ajaxData("get", "/customers", {})
    .done((res) => {
      let data = new Object;
      data.customers = res;
      $("#content-main").html(template(data));
    })
    .fail((err) => {
      console.log(err);
    });
}

const handlebarsFormSetup = () => {
  Handlebars.registerHelper("displayOption", (item, options) => {
    // debugger;
    if (item.selected) {
      return new Handlebars.SafeString(`<option value="${item.id}" selected>${item.name}</option>`)
    } else {
      return new Handlebars.SafeString(`<option value="${item.id}">${item.name}</option>`)
    }
  })
}

const initForm = () => {
  const pathname = window.location.pathname;
  const source = document.getElementById("customer-form-template").innerHTML;
  const template = Handlebars.compile(source);
  
  const getPaymentTerms = ajaxData("get", "/payment_terms/active", {}),
        getCurrencies = ajaxData("get", "/currencies/active", {}),
        getWarehouses = ajaxData("get", "/warehouses/active", {})

  if ((pathname === "/customers/new") || (pathname === "/customers/new/")) {
    $.when(getPaymentTerms, getCurrencies, getWarehouses)
      .done((paymentTermsList, currenciesList, warehousesList) => {
        let data = new Object;
        data.paymentTerms = paymentTermsList[0];
        data.currencies = currenciesList[0];
        data.warehouses = warehousesList[0];
        $("#content-main").html(template(data));
        $("form#new_customer").on("submit", submitCustomerForm);
      })
      .fail((err) => {
        console.log(err);
      });
  } else {
    const getCustomer = ajaxData("get", pathname, {})
    $.when(getCustomer, getPaymentTerms, getCurrencies, getWarehouses)
      .done((customerData, paymentTermsList, currenciesList, warehousesList) => {
        let data = new Object;

        // Visit this again to have the option selected
        data.customer = customerData[0];
        data.paymentTerms = paymentTermsList[0];
        data.currencies = currenciesList[0];
        data.warehouses = warehousesList[0];

        // console.log(data);
        $("#content-main").html(template(data));
        $("form#customer").on("submit", submitCustomerForm);
      })
      .fail((err) => {
        console.log(err);
      });
  }
}

const submitCustomerForm = (e) => {
  e.preventDefault();
  const $form = $(e.target);
  const method = $form.attr("method");
  const action = $form.attr("action");
  const params = $form.serialize();

  ajaxData(method, action, params)
    .done((res) => {
      window.location.href = `/customers/${res.id}`;
    })
    .fail((err) => {
      console.log(err);
    });
}

const initShow = () => {
  const pathname = window.location.pathname;
  const source = document.getElementById("customer-show-template").innerHTML;
  const template = Handlebars.compile(source);

  ajaxData("get", pathname, {})
    .done((res) => {
      console.log(res);
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
