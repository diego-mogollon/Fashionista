Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: 'items#index', as: :authenticated_root
  end

  root to: 'pages#home'

  resources :items do
    resources :bookings
  end

     resources :bookings, only: [:destroy] do
      resources :reviews, only: [:new, :create, :show]
  end

  # resources :items do
  #   resources :reviews, only: [:new, :create]
  # end

  # resources :items do
  #   resources :item_categories
  # end

  get '/dashboard', to: 'pages#dashboard'

end
