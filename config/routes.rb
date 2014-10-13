Rails.application.routes.draw do
	devise_for :users 
	
	root 'pages#index' 

	resources :users

	devise_scope :user do
		get 'sign_out' => 'users/sessions#destroy'
	end
end
