Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'

  get "about", to: "pages#about"

  resources :offers do
    resources :bookings, only: [:create,:show]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
