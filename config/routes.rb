Rails.application.routes.draw do
  resources :players, only: [:index, :create]
  get 'player/:id', to: 'players#show'
  get '/top-five', to: 'games#top_five'

  resources :games, only: [:index,:create]
end
