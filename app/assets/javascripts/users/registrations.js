$(function(){

  $('form#new_user').submit(function(e) {
    e.preventDefault();
    const $form = $(this);
    const action = $form.attr("action");
    const params = $form.serialize();

    $.ajax({
      url: action,
      method: "post",
      data: params,
      dataType: "json"
    })
    .done((res) => {
      document.location.href = '/'
    })
    .fail((err) => {
      console.log(err);
    })
  });

});
