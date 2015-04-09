Rails.application.routes.draw do
  resources :users

  get '/login' => 'users#login'
end
