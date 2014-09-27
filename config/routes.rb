Rails.application.routes.draw do

  root 'adopters#index'

  resources :adopters
end
