Rails.application.routes.draw do

  get 'notifications/index'

  mount_devise_token_auth_for 'User', at: 'auth'
  resources :companies, only: [:index, :create]
  resources :company_users, only: [:index, :create]
  get 'subscribed_companies', to: "company_users#subscribed_companies", defaults: {format: :json}
  resources :categories, only: [:index, :create]
  resources :turns, only: [:index, :create, :update], defaults: {format: :json}
  get 'destroy_turns', to: "turns#destroy_turns"
  mount ActionCable.server => '/cable'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
