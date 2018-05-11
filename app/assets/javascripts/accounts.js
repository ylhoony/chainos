const initForm = () => {
  let data = new Object;

  const formTemplate = document.getElementById("account-form-template").innerHTML;
  const template = Handlebars.compile(formTemplate);

  $.ajax({
    method: "get",
    url: "/countries/active",
    dataType: "json"
  })
    .done((res) => {
      data.countries = res;
      debugger;
    })
    .fail(err => console.log(err))

  $.ajax({
    method: "get",
    url: "/currencies/active",
    dataType: "json"
  })
    .done((res) => {
      data.currencies = res;
      debugger;
      document.getElementById("content-body").innerHTML = template(data);
    })
    .fail(err => console.log(err))

  
  $("form#new_account").submit(() => {
    // console.log("what!", this);
    const $form = $(this);
    const action = $form.attr("action");
    const params = $form.serialize();
  })

}

const handlebarsSetup = () => {
  Handlebars.registerPartial('accountFormPartial', document.getElementById("account-form-partial").innerHTML)
}

const init = () => {
  handlebarsSetup();
  initForm();
}

document.addEventListener("DOMContentLoaded", function(event) {
  init();
});
