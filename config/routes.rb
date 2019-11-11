Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	# root to: 'granted_wishes#index'
	root to: 'users#new'

	get '/users', to: redirect('/')

  resources :users
  resources :wishes
  resources :granted_wishes
end
