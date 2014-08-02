Rails.application.routes.draw do

  devise_for :users

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  root 'pages#home'

  resources :products

  get :cart, to: 'carts#index'
  get 'cart/clear', to: 'carts#clear'
  
  resources :line_items
  resources :checkout_wizard
  resources :messages, only: :create
  get 'contact-us', to: 'messages#new'

end
