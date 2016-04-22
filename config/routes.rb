Rails.application.routes.draw do

  devise_for :users
  get 'open/index'

  get 'restricted/index'

  get 'restricted/restricted'

  root "statics#home"

end


