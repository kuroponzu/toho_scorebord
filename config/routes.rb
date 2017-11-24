Rails.application.routes.draw do
  resources :users
  root 'static_pages#home'
  get 'sign_up' ,to:'users#new'

end
