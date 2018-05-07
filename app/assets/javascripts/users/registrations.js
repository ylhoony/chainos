$(function(){

  $('form#new_user').submit(function(e) {
    e.preventDefault();
    // console.log("button working")
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
      console.log(res);
    })
    .fail((err) => {
      alert( "error" );
    })
  });

});
