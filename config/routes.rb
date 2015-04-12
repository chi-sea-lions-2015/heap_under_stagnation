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

  post "/questions/:question_id/answers/:answer_id/answervoteup" => "votes#create_answer_voteup"
  post "/questions/:question_id/answers/:answer_id/answervotedown" => "votes#create_answer_votedown"

  post '/questions/:question_id/voteup' => 'votes#voteup'

end
