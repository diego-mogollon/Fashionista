Rails.application.routes.draw do
  devise_for :users

  authenticated :user do
    root to: 'items#index', as: :authenticated_root
  end

  root to: 'pages#home'

  resources :items do
    resources :bookings
  end
  resources :items do
    resources :reviews, only: [:new, :create]
  end
  resources :items do
    resources :item_categories

  end
  
  namespace :user do
    root :to => "dashboard#show" #https://guides.rubyonrails.org/routing.html
  end

end
