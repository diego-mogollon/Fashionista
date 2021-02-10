Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: 'items#index', as: :authenticated_root
  end

  root to: 'items#index'

  resources :items do
    resources :bookings
  end
  resources :items do
    resources :reviews, only: [:new, :create]
  end
  resources :items do
    resources :item_categories

  end
  
  get '/dashboard', to: 'pages#dashboard'

end
