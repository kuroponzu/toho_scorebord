Rails.application.routes.draw do
  get 'sessions/new'

  resources :users
  resources :series
  #resources :gamescores

  root 'static_pages#home'
  get 'sign_up' ,to:'users#new'
  get '/login',to:'sessions#new'
  post '/login',to:'sessions#create'
  delete '/logout',to:'sessions#destroy'
  get '/list',to:'static_pages#list'
  get '/gamescores' ,to:'gamescores#new'
  post '/gamescores' ,to:'gamescores#create'
end
