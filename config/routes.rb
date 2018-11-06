Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :album, only: [:index, :show]
  resources :genre, only: [:index, :show]
  root to: 'genre#index'
end
