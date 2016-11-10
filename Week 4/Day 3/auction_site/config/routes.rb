Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/users/new', to: 'users#new', as: :new_user
  post '/users', to: 'users#create'

  get '/users', to: 'users#index'
  get '/users/:id', to: 'users#show', as: :user

  get '/users/:user_id/products/new', to: 'products#new', as: :new_product 

  get '/users/:user_id/products', to: 'products#index', as: :user_products

end
