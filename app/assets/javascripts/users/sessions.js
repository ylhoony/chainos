$(function() {
  $("form#new_user").on("submit", function(e) {
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
      document.location.href = '/';
    })
    .fail((err) => {
      // Should add message when user is not logged in.
      console.log(err.responseJSON);
      // $("input[type='submit']").prop("disabled", false);
    })
  });
})

