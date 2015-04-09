Rails.application.routes.draw do
  resources :users

  get '/login' => 'users#login'
  post '/login' => 'users#update'
  get '/welcome' => 'users#welcome'
  get '/signup' => 'users#signup'
  post '/signup' => 'users#create'
  delete '/logout' => 'users#destroy'
end
