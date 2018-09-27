Rails.application.routes.draw do

  resources :users
  resources :bank_cards

  root 'users#index'
end
