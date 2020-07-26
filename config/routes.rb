Rails.application.routes.draw do
  devise_for :users
  resources :user, only: [:edit, :update]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'top#index'
  resources :list, only: [:new, :create, :edit, :update, :destroy] do
  resources :card, except: :index
end
end
