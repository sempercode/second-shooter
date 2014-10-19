Rails.application.routes.draw do
	devise_for :users 
	
	root 'pages#index'

	get 'about', to: 'pages#about' 

	get 'form_input',   to: 'form_example#form_input'
	
	get 'form_output',  to: 'form_example#form_output'

	resources :users

end
