Rails.application.routes.draw do
  resources :answer_selections
  resources :answers
  resources :questions
  resources :game_episodes
  resources :results
  resources :game_sessions
  resources :profiles

  #homepage
  get '/', to: 'pages#show'
  get '/crap', to: 'pages#oops'

  #game_session
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  get '/logout', to: 'sessions#destroy'

  #profile database
  get '/signup', to: 'profiles#new'
  post '/profiles', to: 'profiles#create'
  get '/profiles/:id', to: 'profiles#show'
  
  get '/testjsonforjen', to: 'sessions#testjson'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
