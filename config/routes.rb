Rails.application.routes.draw do


  get 'comments/new'

  get 'comments/create'

  get 'comments/destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users
  resources :goals
  resource :session
  resources :comments
end
