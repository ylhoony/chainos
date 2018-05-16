const initIndex = () => {
  let data = new Object;
  const source = document.getElementById("account-list-template").innerHTML;
  const template = Handlebars.compile(source);

  $.ajax({
    method: "get",
    url: "/accounts",
    dataType: "json"
  })
    .done((res) => {
      data.accounts = res;
      $("#content-main").html(template(data));
    })
    .fail((err) => {
      console.log(err);
    })


}

const attachEvents = () => {
  $(".create button").on("click", () => {
    let data = new Object;
    const source = document.getElementById("account-form-template").innerHTML;
    const template = Handlebars.compile(source);

    $.ajax({
      method: "get",
      url: "countries/active",
      dataType: "json"
    })
      .done((res) => {
        data.countries = res;
        $("#content-main").html(template(data));

        $("form#new_account").on("submit", (e)=> {
          e.preventDefault();
          const $form = $(e.target);
          const action = $form.attr("action");
          const params = $form.serialize();
          $.ajax({
            url: action,
            method: "post",
            data: params,
            dataType: "json"
          })
          .done((res) => {
            // window.location.href = "/"
          })
          .fail((err) => {
            console.error(err);
          });
        });
      })
      .fail((err) => {
        console.log(err);
      });

    $.ajax({
      method: "get",
      url: "currencies/active",
      dataType: "json"
    })
      .done((res) => {
        data.currencies = res;
        // $("#content-main").html(template(data));
      })
      .fail((err) => {
        console.log(err);
      });
  });
}

const handlebarsIndexSetup = () => {
  Handlebars.registerPartial("accountListPartial", document.getElementById("account-list-partial").innerHTML);
  Handlebars.registerHelper("displayOptions", (item) => {
    return new Handlebars.SafeString(`<option value="${item.id}">${item.name}</option>`);
  })
}

const init = () => {
  if (($.ajaxSettings.url).endsWith("/accounts") || ($.ajaxSettings.url).endsWith("/accounts/")) {
    handlebarsIndexSetup();
    initIndex();
  } else {
    consoel.log("show!")
  }
}

// document.addEventListener("DOMContentLoaded", function(event) {
//   init();
// });

$(() => {
  init();
  attachEvents();
})
