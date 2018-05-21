"use strict";

const initIndex = () => {
  const source = document.getElementById("payment-terms-index-template").innerHTML;
  const template = Handlebars.compile(source);
  
  $.ajax({
    method: "get",
    url: "/payment_terms",
    dataType: "json"
  })
    .done((res) => {
      let data = new Object;
      data.paymentTerms = res;
      $("#content-main").html(template(data));

      $("a").on("click", (e) => {
        window.location.href = $(e.target).attr("href");
      })
    })
    .fail((err) => {
      console.log(err);
    });
}

const initShow = () => {
  const source = document.getElementById("payment-term-show-template").innerHTML;
  const template = Handlebars.compile(source);
  const pathname = window.location.pathname;

  $.ajax({
    method: "get",
    url: pathname,
    dataType: "json"
  })
    .done((res) => {
      $("#content-main").html(template(res));
    })
    .fail((err) => {
      console.log(err);
    });

}

const initForm = () => {
  const pathname = window.location.pathname;
  const source = document.getElementById("payment-term-form-template").innerHTML;
  const template = Handlebars.compile(source);  
  
  if ((pathname === "/payment_terms/new") || (pathname === "/payment_terms/new/")) {
    $.ajax({
      method: "get",
      url: "/payment_options",
      dataType: "json"
    })
      .done((res) => {
        let data = new Object;
        data.paymentOptions = res;
        $("#content-main").html(template(data));

        $("form#new_payment_term").on("submit", (e) => {
          e.preventDefault();

          const $form = $(e.target);
          const action = $form.attr("action")
          const params = $form.serialize();

          $.ajax({
            method: "post",
            url: action,
            dataType: "json",
            data: params
          })
            .done((res) => {
              window.location.href = `/payment_terms/${res.id}`;
            })
            .fail((err) => {
              console.log(err);
            });

        });
      })
      .fail((err) => {
        console.log(err);
      });
  } else {
    $.ajax({
      method: "get",
      url: pathname,
      dataType: "json"
    })
      .done((res) => {
        $("#content-main").html(template(res));
        
      })
      .fail((err) => {
        console.log("err", err);
      })
    
  }
}

const HandlebarsFormSetup = () => {
  Handlebars.registerHelper("displayOption", (item) => {
    return new Handlebars.SafeString(`<option value="${item.id}">${item.name}</option>`)
  })
}

const init = () => {
  const pathname = window.location.pathname;
  if ((pathname === "/payment_terms") || (pathname === "/payment_terms/")) {
    initIndex();
  } else if (pathname.slice(-4).includes("new") || pathname.slice(-5).includes("edit")) {
    initForm();
    HandlebarsFormSetup();
  } else {
    initShow();
  }

  $(".create button").on("click", () => {
    window.location.href = "/payment_terms/new"
  });

  $("a").on("click", (e) => {
    e.preventDefault();
    window.location.href =  $(e.target).attr("href");
  });
}

$(() => {
  init();
})