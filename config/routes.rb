Rails.application.routes.draw do
  resources :suggests
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :events
  root 'pages#home'

  get 'pages/event'
  get 'pages/result'
  get 'pages/contribute'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
