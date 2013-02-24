RailsObjectsSample::Application.routes.draw do

  root :to => "pages#home"

  resources :posts, only: [:show]
end
