Rails.application.routes.draw do
  mount Attachinary::Engine => "/attachinary"
  resources :products, only: [:create, :new, :destroy, :show]
  devise_for :users
  root to: 'pages#home'
  get 'pages/contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
