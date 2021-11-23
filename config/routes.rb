Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get "fullcalendar", to: "pages#fullcalendar"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :time_slots, only: [:new, :create, :show, :index, :destroy] do
    resources :bookings, only: [:new, :create, :show]
  end

  resources :users, only: [:user_profile] do
    resources :sport_classes, only: [:show, :new, :create, :index]
  end

  resources :sport_classes, only: [:show, :destroy, :index]
end
