Rails.application.routes.draw do
	devise_for :users 
	
	root 'pages#index'

	get 'about', to: 'pages#about' 

	get 'contact', to: 'contact#index'

	post 'send_email', to: 'contact#send_email'

	resources :users

end
