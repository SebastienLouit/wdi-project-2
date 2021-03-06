Rails.application.routes.draw do

  devise_for :users
  
  resources  :users
  resources  :meals
  resources :servings do
    resources :orders
  end

  resources :comments, only: [:create, :destroy]

  get "/inbox", to: "orders#inbox"
  get "/outbox", to: "orders#outbox"
  get "/map", to: "statics#map"
  root "statics#home"

  resources :orders, only: [] do 
    member do
      get "accept"
      get "reject"
      get "cancel"
    end
 end


end


