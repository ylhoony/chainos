Rails.application.routes.draw do
  resources :countries
  devise_for :users

  get "/dashboard", to: "navigations#dashboard", as: "nav_dashboard"
  get "/demand", to: "navigations#demand", as: "nav_demand"
  get "/supply", to: "navigations#supply", as: "nav_supply"
  
  root to: "navigations#index"
  
end
