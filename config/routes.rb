Rails.application.routes.draw do
	devise_for :users 
	
	root 'pages#index'

	get 'about', to: 'pages#about' 

	get 'contact', to: 'contact#contact'

	resources :users

end
