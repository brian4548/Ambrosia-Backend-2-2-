Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/login',    to: 'sessions#create'
  post '/logout',   to: 'sessions#destroy'
  get '/logged_in', to: 'sessions#is_logged_in?'
  resources :users, only: [:create, :show, :index] do 
  resources :items, only: [:create, :show, :index, :destroy]
  
  resources :reviews
  resources :establishments
  resources :comments
  resources :likes
  resources :cities
 end

end
