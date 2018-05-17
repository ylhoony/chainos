const initIndex = () => {
  let data = new Object;
  const source = document.getElementById("payment-option-index-template").innerHTML;
  const template = Handlebars.compile(source);

  $.ajax({
    method: "get",
    url: "/payment_options",
    dataType: "json"
  })
    .done((res) => {
      data.paymentOptions = res;
      $("#content-main").html(template(data));
    })
    .fail((err) => {
      console.error(err);
    })

  $(".create button").on("click", () => {
    window.location.href = "/payment_options/new"
  })
}

const initForm = () => {
  const source = document.getElementById("payment-option-form-template").innerHTML;
  const template = Handlebars.compile(source);

  const pathname = window.location.pathname;
  if ((pathname === "/payment_options/new") || (pathname === "/payment_options/new/")) {
    $("#content-main").html(template());
  } else {
    let data = new Object;
    $.ajax({
      method: "get",
      url: pathname,
      dataType: "json"
    })
      .done((res) => {
        $("#content-main").html(template(res));

        $("form#payment_option").on("submit", (e) => {
          e.preventDefault();
          // console.log("test");

          const $form = $(e.target);
          const action = $form.attr("action");
          const params = $form.serialize();

          $.ajax({
            method: "put",
            url: action,
            dataType: 'json',
            data: params
          })
            .done((res) => {
              window.location.href = `/payment_options/${res.id}`;
            })
            .fail((err) => {
              console.error(err);
            });
        })

      })
      .fail((err) => {
        console.log(err);
      });
  }

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
      });
  });

}

const init = () => {
  const pathname = window.location.pathname;
  if ((pathname === "/payment_options") || (pathname === "/payment_options/")) {
    initIndex();
  } else if (pathname.slice(-4).includes("new") || pathname.slice(-5).includes("edit")) {
    initForm();
  } else {
    initShow();
  }

  $("a").on("click", (e) => {
    e.preventDefault();
    window.location.href =  $(e.target).attr("href");
  });
}

$(() => {
  init();
});
