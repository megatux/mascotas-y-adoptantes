Rails.application.routes.draw do
  root 'home#show'

  resources :adopters
end
