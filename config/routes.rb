Rails.application.routes.draw do
  
  resources :users
  resources :projects
  resources :andrews
  # Routing logic: fallback requests for React Router.
  # Leave this here to help deploy your app later!
  get "*path", to: "fallback#index", constraints: ->(req) { !req.xhr? && req.format.html? }

  get '/authenticated_user', to: 'users#show'
  post '/login', to: 'sessions#create'
  

end
