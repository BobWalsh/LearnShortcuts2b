Rails.application.routes.draw do
   match "/stripe_checkout", :to => "subscriptions#stripe_checkout", :via => [:post]
  get "users/index"
  resources :static_pages
  resources :cards
  resources :cheatsheets
  devise_for :users
  resources :users, :only => [:show]
  match "/users/:id", to: "users#show", via: "get"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome#index'
end
