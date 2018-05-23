"use strict";

$(document).on('turbolinks:load', () => {
  attachEventListener();
});

const attachEventListener = () => {
  const pathname = window.location.pathname;

  $("div.create").on("click", () => {
    if (pathname.endsWith("/"))
      window.location.href = `${window.location.pathname}new`
    else {
      window.location.href = `${window.location.pathname}/new`
    }
  });

  $("div.edit").on("click", () => {
    if (pathname.endsWith("/"))
      window.location.href = `${window.location.pathname}edit`
    else {
      window.location.href = `${window.location.pathname}/edit`
    }
  });

  $("div.delete").on("click", () => {
    $.ajax({
      method: "delete",
      url: window.location.pathname,
      dataType: "json"
    })
      .done((res) => {
        window.location.href = pathname.slice(0, pathname.indexOf("/",1));
      })
      .fail((err) => {
        console.log(err);
      })
  });

}
