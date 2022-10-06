Rails.application.routes.draw do
  devise_for :users
  root to:"pages#index"
   resources :pages, only: [:index]
   get 'summary', to: 'pages#summary'
   get 'access', to: 'pages#access'
   get'form',to: 'pages#form'
   get'attention',to: 'pages#attention'
   resources :menus
   resources :limits, only: [:new, :create]
   resources :sides, only: [:new, :create]
end
