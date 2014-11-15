Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	devise_for :users, :controllers => {:registrations => "registrations"} 
	
	root 'pages#index'

	get 'about', to: 'pages#about' 

	get 'contact', to: 'contact#new'
	post 'contact', to: 'contact#create'

	resources :posts


	resources :users

	resources :posts do
  	resources :comments
end


end
