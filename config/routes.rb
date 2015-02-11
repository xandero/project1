Rails.application.routes.draw do
  root :to => 'pages#home'
  get '/about' => 'pages#about'
  get '/faq' => 'pages#faq'
  resources :users
  resources :nutritions, :only => [:index, :show]

  resources :meals do
    resources :foods 
    post '/quantity' => 'foods#quantity'
    post '/food_to_meal' => 'foods#food_to_meal'
  end


  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
end
