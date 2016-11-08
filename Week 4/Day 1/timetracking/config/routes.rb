Rails.application.routes.draw do

	get '/', to: 'site#home'

	get '/projects', to: 'projects#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
