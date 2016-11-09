Rails.application.routes.draw do

	get '/', to: 'site#home'

	get '/projects', to: 'projects#index'

	get 'projects/new', to: 'projects#new', as: :new_project

	get '/projects/:id', to: 'projects#show', as: :project

	get '/projects/:project_id/time_entries', to: 'time_entries#index', as: :project_time_entries

	get '/projects/:project_id/time_entries/new', to: 'time_entries#new', as: :new_time_entry

	post '/projects/:project_id/time_entries', to: 'time_entries#create', as: :project_time_entries

	post 'projects', to: 'projects#create'





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
