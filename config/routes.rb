Rails.application.routes.draw do
  resources :palmers
  root 'palmers#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
