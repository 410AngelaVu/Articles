Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root to: 'homes#index'
  resources :articles do
  	resources :likes, only: [:create, :destroy, :index]
  end

  resources :categories
end
