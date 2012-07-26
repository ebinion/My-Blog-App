BlogApp::Application.routes.draw do
  resources :categories

  resources :users

  resources :posts do
  	member do 
  		put "upload"
  	end
  end
  
  get "login" => "Sessions#login", :as => "login"
  
  post "login" => "Sessions#create", :as => "login"
  
  delete "logout" => "Sessions#destroy", :as => "session"
  
  root to: "Posts#index"
end
