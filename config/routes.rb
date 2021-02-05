Rails.application.routes.draw do

  root(to: "static#home")
  
  
  resources :recipes 
  # resources :comments
  
  # resources :categories do
    # resources :recipes
    
   
    get "/signup", to: "users#new", as: "signup"
    post "/signup", to: "users#create"
    get "/login", to: "sessions#new", as: "login"
    post "/login", to: "sessions#create"
  
    delete "/logout", to: "sessions#destroy", as: "destroy_user_session"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
