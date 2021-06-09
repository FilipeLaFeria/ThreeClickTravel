Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :definitions, only: %i[show new create update destroy]

  resources :bookings, only: %i[index show new create destroy]

  resources :ratings, only: %i[show new create update destroy]

  resources :offers, only: %i[index show]

  resources :destinations, only: %i[index]

  resources :accomodations, only: %i[new create]

  resources :flights, only: %i[new create]
end
