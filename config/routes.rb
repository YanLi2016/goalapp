Rails.application.routes.draw do
  
  resources :badgets

  resources :comments

  resources :mygoals
 
  resources :dailygoals
  get 'dailygoals/:id/edits', to: 'dailygoals#edits', as: 'edits_dailygoal'
  get 'dailygoals/:id/indexs', to: 'dailygoals#indexs', as: 'indexs_dailygoal'

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
