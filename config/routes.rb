Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/dashboard', to: 'pages#dashboard'
  get '/wishlist', to: 'pages#wishlist'
  get '/insurance', to: 'pages#insurance'
  get '/confirmation', to: 'pages#confirmation'
  get '/tests', to: 'pages#testgwen'


  resources :listings do
    resources :rentals
  end

  resources :listings
  resources :rentals
  resources :rentals, only: [:show] do
    resources :reviews, only: [:create, :new]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
