Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :granted_wishes
	root to: 'granted_wishes#index'

	# root to: 'users#new'
	get '/users', to: redirect('/')

  resources :wishes
  resources :users
end
