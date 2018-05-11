const initForm = () => {
  let data = new Object;

  const formTemplate = document.getElementById("account-form-template").innerHTML;
  const template = Handlebars.compile(formTemplate);

  // need to optimize - not sure how to find out 
  // when it is getting all the data in to data object
  $.ajax({
    method: "get",
    url: "/countries/active",
    dataType: "json"
  })
    .done((res) => {
      data.countries = res;
      document.getElementById("content-body").innerHTML = template(data);
    })
    .fail(err => console.log(err))

  $.ajax({
    method: "get",
    url: "/currencies/active",
    dataType: "json"
  })
    .done((res) => {
      data.currencies = res;
      document.getElementById("content-body").innerHTML = template(data);
    })
    .fail(err => console.log(err))
  /////
  
  $("form#new_account").submit(() => {
    const $form = $(this);
    const action = $form.attr("action");
    const params = $form.serialize();

    $.ajax({
      method: "post",
      url: action,
      data: params,
      dataType: "json"
    })
      .done((res) => {
        console.log(res);
        // document.location.href = '/accounts'
      })
      .fail((err) => {
        console.log(err);
      })
  })
}

const handlebarsSetup = () => {
  Handlebars.registerPartial('accountFormPartial', document.getElementById("account-form-partial").innerHTML)

  Handlebars.registerHelper('displayOption', function(item) {
    return new Handlebars.SafeString(`<option value="${item.id}">${item.name}</option>`)
  })
}

const init = () => {
  handlebarsSetup();
  initForm();
}

document.addEventListener("DOMContentLoaded", function(event) {
  init();
});
