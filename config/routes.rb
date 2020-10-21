Rails.application.routes.draw do

  get 'reading_statuses/new'
  get 'authors/new'
  get 'genres/new'
 root :to => 'pages#home'
  resources :users , :only => [:new, :create, :index]

get '/login' => 'session#new'
post '/login' => 'session#create'
delete '/login' => 'session#destroy'

resources :shelves , :except =>[:delete]
resources :books
resources :reading_statuses
resources :authors
resources :genres

end
