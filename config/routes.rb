Rails.application.routes.draw do
  devise_for :users

  root to: 'items#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  

  resources :items do
    resources :bookings
  end
  resources :items do
    resources :reviews, only: [:new, :create]
  end
  resources :items do
    resources :item_categories

  end
  get "dashboard" => "pages#dashboard"

end
