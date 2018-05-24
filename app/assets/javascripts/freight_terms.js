"use strict";

$(document).on('turbolinks:load', () => {
  init();
});

// class FreightTerm {
//   constructor(name, status) {
//     this.name = name;
//     this.status = status;
//   }
// }

const init = () => {
  const pathname = window.location.pathname;
  if (pathname.endsWith("/freight_terms") || pathname.endsWith("/freight_terms/")) {
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
    initShow();
  }
}

const initIndex = () => {
  const source = document.getElementById("freight-terms-index-template").innerHTML;
  const template = Handlebars.compile(source);
  ajaxData("get", "/freight_terms", {})
    .done((res) => {
      let data = new Object;
      data.freightTerms = res;
      $("#content-main").html(template(data));
    })
    .fail((err) => {
      console.log(err);
    });
}

const initForm = () => {
  const pathname = window.location.pathname;
  const source = document.getElementById("freight-term-form-template").innerHTML;
  const template = Handlebars.compile(source);

  if ((pathname === "/freight_terms/new") || (pathname === "/freight_terms/new/")) {
    $("#content-main").html(template());
  } else {
    ajaxData("get", pathname, {})
      .done((res) => {
        $("#content-main").html(template(res));
        $("form#freight_term").on("submit", submitFreightTermForm);
      })
      .fail((err) => {
        console.log(err);
      });
  }

  $("form#new_freight_term").on("submit", submitFreightTermForm);
}

const submitFreightTermForm = (e) => {
  e.preventDefault();
  const $form = $(e.target);
  const method = $form.attr("method");
  const action = $form.attr("action");
  const params = $form.serialize();

  ajaxData(method, action, params)
    .done((res) => {
      window.location.href = `/freight_terms/${res.id}`;
    })
    .fail((err) => {
      console.log(err);
    });
}

const initShow = () => {
  const source = document.getElementById("freight-term-show-template").innerHTML;
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