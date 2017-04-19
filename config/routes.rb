Rails.application.routes.draw do
  resources :tasks
  devise_for :users
  root 'tasks#index'
  #root 'welcome#index'
end
