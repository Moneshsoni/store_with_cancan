Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
  scope '/admin' do
    resources :users
  end
  resources :items
  resources :roles
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
