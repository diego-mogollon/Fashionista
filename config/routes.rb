Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items, only: [:show, :new, :create, :edit, :update, :destroy] do
    resources :item_categories

  end
end
