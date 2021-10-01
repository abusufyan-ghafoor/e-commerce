Rails.application.routes.draw do

  # devise_for :users, :controllers => { :registrations => 'users/registrations' }
  devise_for :users, :controllers => {:registrations => "users/registrations"}


  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  #root to: "products#index"
  root to: "products#list"
  resources :products do
    resources :comments
  end
  
  resources :categories
  resources :orders
  resources :carts
end
