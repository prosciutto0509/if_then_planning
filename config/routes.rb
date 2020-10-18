Rails.application.routes.draw do
  root 'top#index'
  devise_for :users
  resources :user, only: [:edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :list, only: [:new, :create, :edit, :update, :destroy] do
  resources :card, except: :index
  resources :card do
    member do
     post  'complete'
  
    end
  end
end
end
