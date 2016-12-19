Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	root to: 'users#new'
	get '/users', to: redirect('/')

  resources :wishes
  resources :users
end
