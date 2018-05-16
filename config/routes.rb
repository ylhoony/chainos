Rails.application.routes.draw do
  resources :payment_options
  resources :employees
  resources :accounts
  
  get "/currencies/active", to: "currencies#active"
  resources :currencies
  
  get "/countries/active", to: "countries#active"
  resources :countries
  
  devise_for :users, controllers: {
    registrations: "users/registrations",
    sessions: "users/sessions"
  }

  get "/dashboard", to: "navigations#dashboard", as: "nav_dashboard"
  get "/demand", to: "navigations#demand", as: "nav_demand"
  get "/supply", to: "navigations#supply", as: "nav_supply"
  get "/product", to: "navigations#product", as: "nav_product"
  get "/warehouse", to: "navigations#warehouse", as: "nav_warehouse"
  get "/logistics", to: "navigations#logistics", as: "nav_logistics"
  get "/report", to: "navigations#report", as: "nav_report"
  get "/setting", to: "navigations#setting", as: "nav_setting"

  root to: "navigations#index"
  
end
