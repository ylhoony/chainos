"use strict";

class Warehouse {
  constructor(attributes) {
    this.id = attributes.id;
    this.name = attributes.name;
    this.contact = attributes.contact;
    this.address1 = attributes.address1;
    this.address2 = attributes.address2;
    this.city = attributes.city;
    this.state = attributes.state;
    this.countryId = attributes.country.id;
    this.postalCode = attributes.postal_code;
    this.countryName = attributes.country.name;
    this.email = attributes.email;
    this.phone = attributes.phone;
    this.fax = attributes.fax;
    this.status = attributes.status;
  }

  renderWarehouse() {
    return Warehouse.template(this);
  }
}

$(document).on('turbolinks:load', () => {
  const pathname = window.location.pathname;
  if (pathname.includes("warehouses")) {
    init();
  }
  Warehouse.templateSource = document.getElementById("warehouse-show-template").innerHTML;
  Warehouse.template = Handlebars.compile(Warehouse.templateSource);
});

const init = () => {
  const pathname = window.location.pathname;
  if (pathname.endsWith("/warehouses") || pathname.endsWith("/warehouses/")) {
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
  const source = document.getElementById("warehouses-index-template").innerHTML;
  const template = Handlebars.compile(source);
  ajaxData("get", "/warehouses", {})
    .done((res) => {
      let data = new Object;
      data.warehouses = res;
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
  const source = document.getElementById("warehouse-form-template").innerHTML;
  const template = Handlebars.compile(source);

  if ((pathname === "/warehouses/new") || (pathname === "/warehouses/new/")) {
    ajaxData("get", "/countries/active", {})
      .done((res) => {
        let data = new Object;
        data.countries = res;
        $("#content-main").html(template(data));
      })
      .fail((err) => {
        console.log(err);
      });
  } else {
    const getWarehouse = ajaxData("get", pathname, {}),
          getCountries = ajaxData("get", "/countries/active", {})
    
    $.when(getWarehouse, getCountries)
      .done((warehouseData, countriesList) => {
        let data = new Object;
        data.warehouse = warehouseData[0];
        data.countries = countriesList[0];
        const optionId = data.warehouse.country.id
        data.countries.map((e) => {
          if (e.id == optionId) { e.selected = true; }
        });
        $("#content-main").html(template(data));
        $("form#warehouse").on("submit", submitWarehouseForm);
      })
      .fail((err) => {
        console.log(err);
      });
  }
  $("form#new_warehouse").on("submit", submitWarehouseForm);
}

const submitWarehouseForm = (e) => {
  e.preventDefault();
  const $form = $(e.target);
  const method = $form.attr("method");
  const action = $form.attr("action");
  const params = $form.serialize();

  ajaxData(method, action, params)
    .done((res) => {
      window.location.href = `/warehouses/${res.id}`;
    })
    .fail((err) => {
      console.log(err);
    });
}

const initShow = () => {
  ajaxData("get", window.location.pathname, {})
    .done((res) => {
      const warehouse = new Warehouse(res);
      const warehouseShow = warehouse.renderWarehouse();
      $("#content-main").html(warehouseShow);
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