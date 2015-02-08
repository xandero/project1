Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users
  resources :nutritions, :only => [:index, :show]
  resources :meals
  resources :foods

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
