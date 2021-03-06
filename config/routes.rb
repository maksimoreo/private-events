Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Users
  resources :users, only: [:new, :create, :show]

  # Sessions
  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  # Events
  resources :events, only: [:new, :create, :show, :index]

  # Event Attendance
  resources :event_attendances, only: [:create]

  root 'events#index'
end
