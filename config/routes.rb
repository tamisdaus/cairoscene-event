Rails.application.routes.draw do
  get 'pretty/index'

  get 'pretty/gallery'

  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  resources :events
  root 'pages#event'

  get 'pages/event'
  get 'pages/result'
  get 'pages/contribute'
  get 'pages/approving'

  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
