Rails.application.routes.draw do
  root 'welcome#home'
  get '/signin' => 'sessions#new'
  post '/signin' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

  resources :users
  post '/users/new' => 'users#create' #why not included in the resources above?
  resources :rides
  resources :attractions
 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
