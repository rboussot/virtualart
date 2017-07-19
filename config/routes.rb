Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  devise_for :users
  root to: 'pages#home'
  get "contact", to: "pages#contact"
  get "profile", to: "pages#profile"
  resources :realisations, only: [:index]
  resources :courses, only: [:index, :show]
  resources :stages, only: [:index]
  resources :users, only: [:edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
