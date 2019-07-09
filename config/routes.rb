Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  post '/users/create', to: 'users#create'
  get '/users/new', to: 'users#new'
  post '/sessions/create', to: 'sessions#create'
  get '/sessions/new', to: 'sessions#new', as: 'login'
end
