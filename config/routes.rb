Rails.application.routes.draw do
  resources :followers
  root to: 'followers#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
