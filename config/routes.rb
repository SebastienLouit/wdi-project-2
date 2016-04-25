Rails.application.routes.draw do

  devise_for :users
  
  resources  :users
  resources  :meals
  resources :servings do
  resources :orders
 end


 root "statics#home"

end


