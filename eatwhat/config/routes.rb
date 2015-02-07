Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users, :meals, :foods
  resources :nutritions, :only => [:index, :show]
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
