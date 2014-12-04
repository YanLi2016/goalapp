Rails.application.routes.draw do
  resources :badgets

  resources :comments

  resources :mygoals

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
