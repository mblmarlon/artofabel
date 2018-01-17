Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  resources :products, only: [:create, :new, :destroy, :show]
  devise_for :users
  root to: 'pages#home'
  get 'pages/contact'
  get 'pages/fashion'
  get 'pages/still'
  get 'pages/portrait'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
