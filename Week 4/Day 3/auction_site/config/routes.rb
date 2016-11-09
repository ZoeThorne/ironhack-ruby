Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users', to: 'users#index'

  get '/users/new', to: 'users#new'

  get '/users/:id', to: 'users#show', as: :user

  post '/users', to: 'users#create'

end
