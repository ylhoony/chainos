"use strict";

$(document).on('turbolinks:load', () => {
  const pathname = window.location.pathname;
  if (pathname.includes("company_addresses")) {
    init();
  }
});

const init = () => {
  const pathname = window.location.pathname;
  if (pathname.slice(-4).includes("new") || pathname.slice(-5).includes("edit")) {
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

const handlebarsFormSetup = () => {
  Handlebars.registerHelper("displayOption", (item, options) => {
    if (item.selected) {
      return new Handlebars.SafeString(`<option value="${item.id}" selected>${item.name}</option>`)
    } else {
      return new Handlebars.SafeString(`<option value="${item.id}">${item.name}</option>`)
    }
  })
}

const initForm = () => {
  const pathname = window.location.pathname;
  const source = document.getElementById("company-address-form-template").innerHTML;
  const template = Handlebars.compile(source);

  if (pathname.endsWith("/company_addresses/new") || pathname.endsWith("/company_addresses/new/")) {
    ajaxData("get", "/countries/active", {})
      .done((res) => {
        let data = new Object;
        data.countries = res;
        data.action = pathname.slice(0,-4);
        $("#content-main").html(template(data));
        $("form#new_company_address").on("submit", submitCompanyAddressForm);
      })
      .fail((err) => {
        console.log(err);
      });
  } else {
    const getCompanyAddress = ajaxData("get", pathname, {}),
          getCountries = ajaxData("get", "/countries/active", {})
    
    $.when(getCompanyAddress, getCountries)
      .done((companyAddressData, countriesList) => {
        let data = new Object;
        data.companyAddress = companyAddressData[0][0];
        data.countries = countriesList[0];
        data.action = pathname.slice(0,-5);
        const optionId = data.companyAddress.country.id
        data.countries.map((e) => {
          if (e.id == optionId) { e.selected = true; }
        });
        
        $("#content-main").html(template(data));
        $("form#company_address").on("submit", submitCompanyAddressForm);
      })
      .fail((err) => {
        console.log(err);
      });
  }
}

const submitCompanyAddressForm = (e) => {
  e.preventDefault();
  const $form = $(e.target);
  const method = $form.attr("method");
  const action = $form.attr("action");
  const params = $form.serialize();

  ajaxData(method, action, params)
    .done((res) => {
      const pathname = window.location.pathname;
      const data = res[0];
      window.location.href = `${pathname.slice(0, pathname.indexOf("/",1))}/${data.company_id}`;
    })
    .fail((err) => {
      console.log(err);
    });
}

const initShow = () => {
  const pathname = window.location.pathname;
  const supplierSource = document.getElementById("supplier-show-template").innerHTML;
  const supplierTemplate = Handlebars.compile(supplierSource);

  const supplierAddressesSource = document.getElementById("supplier-addresses-index-template").innerHTML;
  const supplierAddressesTemplate = Handlebars.compile(supplierAddressesSource);

  ajaxData("get", pathname, {})
    .done((res) => {
      $("#content-main").html(supplierTemplate(res));
    })
    .fail((err) => {
      console.log(err);
    });

  ajaxData("get", `${pathname}/company_addresses`, {})
    .done((res) => {
      let data = new Object;
      data.supplierAddresses = res;
      $("#sub-content").html(supplierAddressesTemplate(data));
    })
    .fail((err) => {
      console.log(err);
    })
}

const ajaxData = (method, dataURL, params) => {
  return $.ajax({
    method: method,
    url: dataURL,
    data: params,
    dataType: "json"
  });
}
