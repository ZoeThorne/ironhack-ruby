Rails.application.routes.draw do

	root to: 'site#home'
	get "/contact", to: 'site#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
