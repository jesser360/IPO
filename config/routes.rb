Rails.application.routes.draw do
  resources :artists
  resources :projects
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/' => 'artists#index'

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  get '/logout' => 'sessions#destroy'

  get '/signup' => 'users#new'
  post '/users' => 'users#create'

end
