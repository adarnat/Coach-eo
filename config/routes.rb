Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # get "fullcalendar", to: "pages#fullcalendar"
  get "calendar", to: "time_slots#calendar"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :time_slots, only: [:show, :index, :create, :update, :edit, :destroy] do
    resources :bookings, only: [:new, :create, :show]
  end

  resources :bookings, only: [:update]

  resources :users, only: [:user_profile] do
    resources :sport_classes, only: [:show, :new, :create, :index]
  end

  get "clients", to: "users#user_clients", as: "user_clients"
  get "clients/:id", to: "users#client_profile", as: "client_profile"

  resources :sport_classes
end
