Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'homes#index'
  resources :articles
  
end
