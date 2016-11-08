Rails.application.routes.draw do
  get 'contacts/index'

  get '/contacts', to: 'contacts#index'

  get 'contacts/new'

  post("/contacts", :to => "contacts#create")

  get '/contacts/show/:id_num', to: 'contacts#show'

  get '/contacts/favourites', to: 'contacts#show_favourites'

  post("/contacts/make_favourite", :to => "contacts#make_favourite")

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
