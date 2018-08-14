Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :users, only: [:show] do
    resources :jobs, only:  [:new]
    resources :bookings, only: [:index, :show, :edit, :update, :destroy]
  end
  resources :jobs, only: [:index, :create,:edit, :update, :show, :destroy] do
    resources :bookings, only: [:new, :create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
