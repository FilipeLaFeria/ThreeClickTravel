Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  resources :definitions, only: %i[show new create update destroy]

  resources :ratings, only: %i[show new create update destroy]

  resources :destinations, only: %i[index] do
    resources :offers, only: %i[index show] do
      resources :bookings, only: %i[show new create destroy]
    end
  end

  # resources :accomodations, only: %i[new create]

  resources :flights, only: %i[new create]
 end
