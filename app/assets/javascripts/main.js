"use strict";

$(() => {
  attachEventListener();
})

const attachEventListener = () => {
  $(".create button").on("click", () => {
    window.location.href = `${window.location.pathname}/new`
  })
}
