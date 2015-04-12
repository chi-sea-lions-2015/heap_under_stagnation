Rails.application.routes.draw do

  resources :questions do
      resources :comments
      resources :answers do
        resources :comments
      end
    end

  post 'questions/:question_id/answers/:answer_id' => 'comments#answer_create'

  get '/' => 'questions#index'
  get '/login' => 'users#login'
  put '/login' => 'users#update'
  get '/signup' => 'users#signup'
  post '/signup' => 'users#create'
  delete '/logout' => 'users#destroy'
  delete '/questions' => 'questions#index'
end
