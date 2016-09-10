Rails.application.routes.draw do

  ActiveAdmin.routes(self)

  root "photos#index"
  resources :photos
  get ':name', to: 'profiles#show', as: :profile 
  
  devise_for :users

end
