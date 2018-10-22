Rails.application.routes.draw do
  resources :posts
  resources :categories
  mount FormSelect::Engine => "/form-select"

  resources :users
end
