Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :definitions, only: %i[show new create update destroy]

  resources :ratings, only: %i[show new create update destroy]

  resources :destinations, only: %i[index] do
    resources :offers, only: %i[index] do
      resources :bookings, only: %i[show new create]
    end
  end

  resources :bookings, only: %i[index destroy]

  resources :flights, only: %i[new create]
 end
