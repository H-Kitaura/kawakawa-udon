Rails.application.routes.draw do
  devise_for :users
  root to:"pages#index"
   resources :pages, only: [:index]
   get'form',to: 'pages#form'
   get'attention',to: 'pages#attention'
   resources :menus
   get 'index2', to: 'menus#index2'
   get 'index3', to: 'menus#index3'

end
