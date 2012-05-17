BlogApp::Application.routes.draw do
  resources :categories

  resources :users

  resources :posts
  
  get "login" => "Sessions#login", :as => "login"
  
  post "login" => "Session#create", :as => "login"
  
  root to: "Posts#index"
end
