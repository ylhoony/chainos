"use strict";

$(document).on('turbolinks:load', () => {
  init();
});

// class UnitOfMeasure {
//   constructor(name, status) {
//     this.name = name;
//     this.status = status;
//   }
// }

const init = () => {
  const pathname = window.location.pathname;
  if (pathname.endsWith("/unit_of_measures") || pathname.endsWith("/unit_of_measures/")) {
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
  const source = document.getElementById("uoms-index-template").innerHTML;
  const template = Handlebars.compile(source);
  ajaxData("get", "/unit_of_measures", {})
    .done((res) => {
      let data = new Object;
      data.unitOfMeasures = res;
      $("#content-main").html(template(data));
    })
    .fail((err) => {
      console.log(err);
    });
}

const initForm = () => {
  const pathname = window.location.pathname;
  const source = document.getElementById("uom-form-template").innerHTML;
  const template = Handlebars.compile(source);

  if ((pathname === "/unit_of_measures/new") || (pathname === "/unit_of_measures/new/")) {
    $("#content-main").html(template());
  } else {
    ajaxData("get", pathname, {})
      .done((res) => {
        $("#content-main").html(template(res));
        $("form#unit_of_measure").on("submit", submitFreightTermForm);
      })
      .fail((err) => {
        console.log(err);
      });
  }
  $("form#new_unit_of_measure").on("submit", submitFreightTermForm);
}

const submitFreightTermForm = (e) => {
  e.preventDefault();
  const $form = $(e.target);
  const method = $form.attr("method");
  const action = $form.attr("action");
  const params = $form.serialize();

  ajaxData(method, action, params)
    .done((res) => {
      window.location.href = `/unit_of_measures/${res.id}`;
    })
    .fail((err) => {
      console.log(err);
    });
}

const initShow = () => {
  const source = document.getElementById("uom-show-template").innerHTML;
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