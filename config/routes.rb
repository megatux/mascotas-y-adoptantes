Rails.application.routes.draw do

  root 'adopters#index'

  resources :products
end
