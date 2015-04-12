Rails.application.routes.draw do

  resources :votes
  resources :questions do
      resources :comments
      resources :answers do
        resources :comments
      end
    end


  get '/' => 'questions#index'
  get '/login' => 'users#login'
  put '/login' => 'users#update'
  get '/signup' => 'users#signup'
  post '/signup' => 'users#create'
  delete '/logout' => 'users#destroy'
  delete '/questions' => 'questions#index'
  post '/questions/:question_id/voteup' => 'votes#questionvoteup'
  post '/questions/:question_id/votedown' => 'votes#questionvotedown'
end
