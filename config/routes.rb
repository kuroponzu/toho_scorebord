Rails.application.routes.draw do
  get 'sessions/new'

  #resources :gamescores
  resources :users
  #resources :gameresults

  root 'static_pages#home'
  get 'sign_up' ,to:'users#new'
  get '/login',to:'sessions#new'
  post '/login',to:'sessions#create'
  delete '/logout',to:'sessions#destroy'
  get '/list',to:'static_pages#list'
  get '/gameresults' ,to:'gameresults#new'
  post '/gameresults' ,to:'gameresults#create'
  delete '/gameresults' ,to:'gameresults#destroy'

end
