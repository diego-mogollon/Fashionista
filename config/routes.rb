Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  resources :items do
    resources :booking, only: [:new, :update, :destory]
  end
end
