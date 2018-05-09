const getCountries = () => {
  $.ajax({
    method: "get",
    url: "/countries/active",
    dataType: "json"
  })
    .done(res => displayCountries(res))
    .fail(err => console.log(err))
}

const getCurrencies = () => {
  $.ajax({
    method: "get",
    url: "/currencies/active",
    dataType: "json"
  })
    .done(res => displayCurrencies(res))
    .fail(err => console.log(err))
}

const displayCurrencies = (data) => {
  console.log("displayCurrencies", data);
}

const displayCountries = (data) => {
  console.log("displayCountries", data);
}

const init = () => {
  getCountries();
  getCurrencies();
}

document.addEventListener("DOMContentLoaded", function(event) {
  init();
});