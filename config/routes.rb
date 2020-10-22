Rails.application.routes.draw do
  root 'complete#index'
  devise_for :users
  resources :user, only: [:edit, :update]
  resources :complete, only: [:index]
    
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :list, only: [:new, :create, :edit, :update, :destroy] do
  resources :card, except: :index do
  resources :complete, only: [:create,:destroy]
  end
  end




end
