const pathname = window.location.pathname;

const windowLocationHref = (path) => {
  return window.location.href = path;
}

const feedContentMain = (template, data) => {
  $("#content-main").html(template(data));
  anchorClickEvent();
}

const anchorClickEvent = () => {
  $("a").on("click", (e) => {
    e.preventDefault();
    window.location.href =  $(e.target).attr("href");
  });
}

const postData = (action, params, controller, postAction) => {
  $.ajax({
    method: 'post',
    url: action,
    dataType: "json",
    data: params
  }).done((res) => {
    windowLocationHref(`${controller}/${res.id}`);
  }).fail((err) => {
    console.log("err");
  })
}

const getData = (action, template) => {
  $.ajax({
    method: "get",
    url: action,
    dataType: "json"
  }).done((res) => {
    let data = new Object;
    data.freightTerms = res;
    feedContentMain(template, data); 
  })
}

const initForm = () => {
  const source = document.getElementById("freight-term-form-template").innerHTML;
  const template = Handlebars.compile(source);
  $("#content-main").html(template());

  $("form#new_freight_term").on("submit", (e) => {
    e.preventDefault();
    const $form = $(e.target);
    const action = $form.attr("action");
    const params = $form.serialize();

    postData(action, params, "/freight_terms", windowLocationHref);
  })
}

const initIndex = () => {
  const source = document.getElementById("freight-terms-index-template").innerHTML;
  const template = Handlebars.compile(source);
  getData(pathname, template, feedContentMain);
}

const initShow = () => {
  const source = document.getElementById("freight-term-show-template").innerHTML;
  const template = Handlebars.compile(source);
  
  getData(pathname, template);
}

const init = () => {
  if ((pathname === "/freight_terms") || (pathname === "/freight_terms/")) {
    initIndex();
  } else if (pathname.slice(-4).includes("new") || pathname.slice(-5).includes("edit")) {
    initForm();
  } else {
    initShow();
  }

  $(".create button").on("click", () => {
    window.location.href = "/freight_terms/new"
  });

  anchorClick();
}

$(() => {
  init();
})