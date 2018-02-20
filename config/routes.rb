Rails.application.routes.draw do
  resources :granted_wishes
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	root to: 'users#new'

  resources :wishes
  resources :users
  resources :granted_wishes
end
