Rails.application.routes.draw do
  resources :users

  get '/login' => 'users#login'
  post '/login' => 'users#update'
  get '/welcome' => 'users#welcome'
  delete '/logout' => 'users#destroy'
end
