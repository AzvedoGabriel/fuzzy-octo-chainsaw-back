Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  # get "up" => "rails/health#show", as: :rails_health_check
  resources :users, only: [:new, :create]
  resources :user_movies, only: [:create, :update]
  resources :movies, only: [:index, :new, :create]
  resources :sessions, only: [:new, :create, :destroy]


  get '/login', to: 'sessions#new'
  delete '/logout', to: 'sessions#destroy'

  get '/movies/new_batch_upload', to: 'movies#new_batch_upload'
  post '/movies/create_batch_upload', to: 'movies#create_batch_upload'
  get '/movies/new_batch_score_upload', to: 'movies#new_batch_score_upload'
  post '/movies/create_batch_score_upload', to: 'movies#create_batch_score_upload'

  root 'sessions#new'
end
# get '/movies/import', to: 'movies#index'

