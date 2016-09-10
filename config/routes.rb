Rails.application.routes.draw do
  get 'profiles/show'

  ActiveAdmin.routes(self)

  root "photos#index"
  resources :photos

  
  devise_for :users

end
