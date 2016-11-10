Rails.application.routes.draw do
  resources :movies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  post '/movies/search', to: 'movies#search', as: :search_movie
  get '/movies/show_results/:searched_movie', to: 'movies#show_results', as: :show_results
  get '/movies/show_imdb_results/:searched_movie', to: 'movies#imdb_search', as: :show_imdb_results

end
