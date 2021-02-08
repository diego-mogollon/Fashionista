Rails.application.routes.draw do
  devise_for :users

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
  get "dashboard" => "pages#dashboard"

end
