TestDevise::Application.routes.draw do
  
  resources :authentications
  devise_for :users
  root :to => "static#home"
  
end
