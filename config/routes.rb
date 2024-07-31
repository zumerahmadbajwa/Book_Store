Rails.application.routes.draw do
  devise_for :users
  resources :authors do
    resources :books do
      resources :reviews, only: [:create, :destroy]
    end
  end
  resources :orders, only: [:index, :show, :new, :create]
  resources :book_orders, only: [:create, :destroy]
  resources :customers, only: [:new, :create, :show]

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
