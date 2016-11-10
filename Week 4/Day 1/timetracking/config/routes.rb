Rails.application.routes.draw do

	get '/', to: 'site#home'

	# get '/projects/new', to: 'projects#new', as: :new_project
	# post '/projects', to: 'projects#create'


	# get '/projects', to: 'projects#index'
	# get '/projects/:id', to: 'projects#show', as: :project

	
	# get '/projects/:id/edit', to: 'projects#edit', as: :edit_project
	# patch '/projects/:id', to: 'projects#update'
	# delete '/projects/:id', to: 'projects#destroy'

	# resources :projects do
	# 	resources :time_entries
	# end

	resources :projects

	get '/projects/:project_id/time_entries', to: 'time_entries#index', as: :project_time_entries


	get '/projects/:project_id/time_entries/new', to: 'time_entries#new', as: :new_time_entry
	post '/projects/:project_id/time_entries', to: 'time_entries#create'


# Only get requests need pseudonyms

# Or you can generate all these with resources :projects
# Check them with rake routes


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
