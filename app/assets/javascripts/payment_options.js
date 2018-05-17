const initForm = () => {
  const source = document.getElementById("payment-option-form-template").innerHTML;
  const template = Handlebars.compile(source);
  $("#content-main").html(template());
}

const init = () => {
  // console.log("test")
  initForm();
}

$(() => {
  init();
});
