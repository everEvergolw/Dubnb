Rails.application.routes.draw do
  devise_for :users
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

 

  # Defines the root path route ("/")
  # root "posts#index"


  namespace :api do

    resources :wishlists, only:[:create, :destroy]
  


  end

  resources :properties, only: [:show] do
  
    resources :bookings, only: [:new]

  end

end
