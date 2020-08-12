Rails.application.routes.draw do
  devise_for :users
  get 'books/index'

  resources :books do
    resources :reviews
  end

  root 'books#index'
end

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

