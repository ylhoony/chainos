Rails.application.routes.draw do
  resources :countries
  devise_for :users

  get "/dashboard", to: "navigations#dashboard", as: "nav_dashboard"
  get "/demand", to: "navigations#demand", as: "nav_demand"
  get "/supply", to: "navigations#supply", as: "nav_supply"
  get "/product", to: "navigations#product", as: "nav_product"
  get "/warehouse", to: "navigations#warehouse", as: "nav_warehouse"
  get "/logistics", to: "navigations#logistics", as: "nav_logistics"
  get "/report", to: "navigations#report", as: "nav_report"
  
  root to: "navigations#index"
  
end
