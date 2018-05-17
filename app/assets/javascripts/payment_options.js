const initIndex = () => {
  const source = document.getElementById("payment-option-index-template").innerHTML;
  const template = Handlebars.compile(source);

  $("#content-main").html(template());



  $(".create button").on("click", () => {
    window.location.href = "/payment_options/new"
  })
}

const initForm = () => {
  const source = document.getElementById("payment-option-form-template").innerHTML;
  const template = Handlebars.compile(source);
  $("#content-main").html(template());

  $("form#new_payment_option").on("submit", (e) => {
    e.preventDefault();
    const $form = $(e.target);
    const action = $form.attr("action");
    const params = $form.serialize();

    $.ajax({
      method: "post",
      url: action,
      dataType: 'json',
      data: params
    })
      .done((res) => {
        window.location.href = `/payment_options/${res.id}`;
      })
      .fail((err) => {
        console.error(err);
      })
  });
}

const init = () => {
  const pathname = window.location.pathname;
  if (pathname === "/payment_options") {
    initIndex();
  } else if (pathname === "/payment_options/new") {
    initForm();
  } else {

  }
}

$(() => {
  init();
});
