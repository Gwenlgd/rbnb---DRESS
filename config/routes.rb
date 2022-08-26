Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/dashboard', to: 'pages#dashboard'
  resources :listings do
    resources :rentals, except: [:edit, :update]
  end

  resources :rentals, only: [:show] do
    resources :reviews, only: [:create, :new]
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
