Rails.application.routes.draw do
  root to: 'items#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :items, only: [:show, :new, :create]
end
