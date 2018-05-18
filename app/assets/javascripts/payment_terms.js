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

const initForm = () => [

]

const init = () => {
  const pathname = window.location.pathname;
  if ((pathname === "/payment_terms") || (pathname === "/payment_terms/")) {
    initIndex();
  } else if (pathname.slice(-4).includes("new") || pathname.slice(-5).includes("edit")) {
    initForm();
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