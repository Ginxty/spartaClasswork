Rails.application.routes.draw do

  
  devise_for :users 

  resources :users do
  	resources :items
  end

  get "/items", to: "items#index_all"

	root to: "items#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
