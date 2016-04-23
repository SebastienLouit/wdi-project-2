Rails.application.routes.draw do

  devise_for :users
  
  resources  :users
  resources  :meals
  resources  :servings


  root "statics#home"

end


