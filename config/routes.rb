Rails.application.routes.draw do
  resources :tasks
  devise_for :users

  namespace :admin do
    resources :tasks do
      member do
        post :publish
        post :hide
      end
    end
  end


  root 'tasks#index'
  #root 'welcome#index'
end
