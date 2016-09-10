Rails.application.routes.draw do
  ActiveAdmin.routes(self)

  root "photos#index"
  
  devise_for :users

end
