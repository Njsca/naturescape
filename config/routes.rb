Rails.application.routes.draw do
  devise_for :users

  root to: "pages#home"
  get "/uikit", to: "pages#uikit"
  get '/profile', to: 'pages#profile'

  resources :hikes do
    resources :bookings, only: %i[new create]
  end

  resources :chatrooms, only: %i[show] do
    resources :messages, only: :create
  end

end
