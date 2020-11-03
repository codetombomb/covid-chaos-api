Rails.application.routes.draw do
  resources :players, only: [:index, :create]
  get 'player/:id', to: 'players#show'

  resources :games, only: [:index,:create]
end
