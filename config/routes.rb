Rails.application.routes.draw do
  resources :tasks
  devise_for :users

  namespace :admin do
    resources :tasks
  end

  root 'tasks#index'
  #root 'welcome#index'
end
