Rails.application.routes.draw do
  resources :granted_wishes
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	root to: 'granted_wishes#index'

  # resources :wishes
  # resources :users
  # resources :granted_wishes
end
