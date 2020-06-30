Rails.application.routes.draw do
  resources :transactions
  resources :beneficiaries
  resources :accounts
  devise_for :users
  get 'home/index'
  root to: "home#index"
end
