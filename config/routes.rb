TestDevise::Application.routes.draw do
  
  get '/auth/:provider/callback' => 'authentications#create'
  post '/auth/:provider/callback' => 'authentications#create'

  resources :authentications
  devise_for :users
  root :to => "static#home"
  
end
