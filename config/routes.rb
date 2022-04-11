Rails.application.routes.draw do
  get 'users/index'
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users
  resources :users, :only => [:index, :show]
  root to: 'users#index'
end
