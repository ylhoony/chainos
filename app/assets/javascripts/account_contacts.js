"use strict";

$(document).on('turbolinks:load', () => {
  const pathname = window.location.pathname;
  if (pathname.includes("account_contacts")) {
    init();
  }
});

const init = () => {
  const pathname = window.location.pathname;
  if (pathname.endsWith("/account_contacts") || pathname.endsWith("/account_contacts/")) {
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
  const source = document.getElementById("account-contacts-index-template").innerHTML;
  const template = Handlebars.compile(source);
  ajaxData("get", "/account_contacts", {})
    .done((res) => {
      let data = new Object;
      data.accountContacts = res;
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
  const source = document.getElementById("account-contact-form-template").innerHTML;
  const template = Handlebars.compile(source);

  if ((pathname === "/account_contacts/new") || (pathname === "/account_contacts/new/")) {
    $("#content-main").html(template());
  } else {
    ajaxData("get", pathname, {})
      .done((res) => {
        $("#content-main").html(template(res));
        $("form#account_contact").on("submit", submitAccountContactForm);
      })
      .fail((err) => {
        console.log(err);
      });
  }
  $("form#new_account_contact").on("submit", submitAccountContactForm);
}

const submitAccountContactForm = (e) => {
  e.preventDefault();
  const $form = $(e.target);
  const method = $form.attr("method");
  const action = $form.attr("action");
  const params = $form.serialize();

  ajaxData(method, action, params)
    .done((res) => {
      window.location.href = `/account_contacts/${res.id}`;
    })
    .fail((err) => {
      console.log(err);
    });
}

const initShow = () => {
  const source = document.getElementById("account-contact-show-template").innerHTML;
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