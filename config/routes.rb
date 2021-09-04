Rails.application.routes.draw do
  resources :players, only: [:index, :create]
  get 'player/:id', to: 'players#show'
  get '/top-five', to: 'games#top_five'
  delete '/top-score', to: 'games#delete_top_score'

  resources :games, only: [:index,:create,:delete]
end
