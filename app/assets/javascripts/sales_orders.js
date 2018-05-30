"use strict";

$(document).on('turbolinks:load', () => {
  const pathname = window.location.pathname;
  if (pathname.includes("sales_orders")) {
    init();
  }
});

const init = () => {
  const pathname = window.location.pathname;
  if (pathname.endsWith("/sales_orders") || pathname.endsWith("/sales_orders/")) {
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
  const source = document.getElementById("sales-orders-index-template").innerHTML;
  const template = Handlebars.compile(source);
  ajaxData("get", "/sales_orders", {})
    .done((res) => {
      let data = new Object;
      data.salesOrders = res;
      console.log(data);
      $("#content-main").html(template(data));
    })
    .fail((err) => {
      console.log(err);
    });
}

const handlebarsFormSetup = () => {
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
  const source = document.getElementById("product-form-template").innerHTML;
  const template = Handlebars.compile(source);

  if ((pathname === "/products/new") || (pathname === "/products/new/")) {
    ajaxData("get", "/unit_of_measures", {})
      .done((res) => {
        let data = new Object;
        data.unitOfMeasures = res;
        $("#content-main").html(template(data));
      })
      .fail((err) => {
        console.log(err);
      });
  } else {
    const getProduct = ajaxData("get", pathname, {}),
          getCountries = ajaxData("get", "/unit_of_measures", {})
    
    $.when(getProduct, getCountries)
      .done((productData, countriesList) => {
        let data = new Object;
        data.product = productData[0];
        data.unitOfMeasures = countriesList[0];
        const optionId = data.product.unit_of_measure.id
        data.unitOfMeasures.map((e) => {
          if (e.id == optionId) { e.selected = true; }
        });
        $("#content-main").html(template(data));
        $("form#product").on("submit", submitProductForm);
      })
      .fail((err) => {
        console.log(err);
      });
  }
  $("form#new_product").on("submit", submitProductForm);
}

const submitProductForm = (e) => {
  e.preventDefault();
  const $form = $(e.target);
  const method = $form.attr("method");
  const action = $form.attr("action");
  const params = $form.serialize();

  ajaxData(method, action, params)
    .done((res) => {
      window.location.href = `/products/${res.id}`;
    })
    .fail((err) => {
      console.log(err);
    });
}

const initShow = () => {
  const source = document.getElementById("product-show-template").innerHTML;
  const template = Handlebars.compile(source);
  
  ajaxData("get", window.location.pathname, {})
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