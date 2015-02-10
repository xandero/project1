Rails.application.routes.draw do
  root :to => 'pages#home'
  resources :users
  resources :nutritions, :only => [:index, :show]

  resources :meals do
    resources :foods 
    post '/search' => 'foods#search'
  end

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
