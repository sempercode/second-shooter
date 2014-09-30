Rails.application.routes.draw do
  devise_for :users

  root "pages#index" 

  get "pages/index" => "pages#index"

  get 'users/:id' => 'users#show'
end
