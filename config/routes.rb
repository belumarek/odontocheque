Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :brands, only: %i[index show]
  resources :products, only: %i[index show]
  get "users/:id", to: "users#show", as: :user
  get "cheques", to: "cheques#cheque", as: :cheque

end
