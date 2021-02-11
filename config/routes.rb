Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'homes#index'
  resources :articles do
  	resources :likes, only: [:create, :destroy]
  end

  resources :categories
end
