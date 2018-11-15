Rails.application.routes.draw do
  get 'search/index'
  get 'search/result'
  devise_for :users, controllers: {
    registrations: 'registrations'
  }
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :search, only: [:index] do
    collection do
      get 'result'
    end
  end
  resources :album, only: [:index, :show]
  resources :genre, only: [:index, :show]
  resources :page, only: [:show]
  root to: 'genre#index'
  get 'album' => 'album#index'
end
