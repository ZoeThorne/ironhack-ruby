Rails.application.routes.draw do
	resources :sandwiches, except: [:new, :edit] do
  		resources :sandwich_ingredients
	end

	resources :ingredients, except: [:new, :edit] do
		  		resources :sandwich_ingredients
	end

	
  
  post '/sandwiches/:sandwich_id/ingredients/add/:ingredient_id', to: 'sandwiches#add_ingredients'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
