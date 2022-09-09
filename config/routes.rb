Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  get "/team", to: "pages#team"
  get '/profile', to: 'pages#profile'

  resources :hikes do
    resources :bookings
    resources :chatrooms, only: %i[show new create]
  end

  resources :chatrooms do
    resources :messages, only: :create
  end
end
