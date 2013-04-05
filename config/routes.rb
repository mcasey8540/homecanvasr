Homecanvasr::Application.routes.draw do
  
  devise_for :users

  #agents
  match "/agents/welcome" => "agents#welcome"
  match "/agents" => "agents#welcome"

  root to:  "home#index"

  resources :posts

end
