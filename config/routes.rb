Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show] do
    resources :jobs, only:  [:new]
    # resources :bookings, only: [:edit, :update, :destroy]
  end
  resources :jobs, only: [:index, :create,:edit, :update, :show, :destroy] do
    resources :bookings, only: [:new, :create]
  end

  resources :bookings, only: [:edit, :update, :destroy]

  get 'owned_jobs', to: "dashboard_owned_jobs#index"
  get 'bookings', to: "bookings#index" # my bookings as a user / job researcher
  get 'requests', to: "bookings#requests" # my bookings as a job offerer
  post 'requests', to: "bookings#requests" # my bookings as a job offerer
  post 'approve', to: "bookings#approve"
  post 'decline', to: "bookings#decline"
  post 'bookings', to: "bookings#create"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
