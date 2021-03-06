Rails.application.routes.draw do
  resources :line_items
  resources :carts
  resources :computers
  resources :charges
  
  devise_for :users, :controllers => { :omniauth_callbacks => "users/omniauth_callbacks", registrations: 'registrations'}
  root 'computers#index'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
