Rails.application.routes.draw do
  resources :tasks do
    resources :resumes
  end

  devise_for :users

  namespace :admin do
    resources :tasks do
      member do
        post :publish
        post :hide
      end

      resources :resumes
    end
  end


  #root 'tasks#index'
  root 'welcome#index'
end
