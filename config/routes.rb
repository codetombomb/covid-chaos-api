Rails.application.routes.draw do
  resources :players, only: [:index]
  get 'player/:id', to: 'players#show'
end
