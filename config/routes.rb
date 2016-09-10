Rails.application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root "photos#index"

  resources :photos do  
    resources :comments
  end 
  
  get ':name', to: 'profiles#show', as: :profile 
  
  devise_for :users

end
