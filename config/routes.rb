Rails.application.routes.draw do
  resources :teams, only: [:index, :show]
  root to: 'teams#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
