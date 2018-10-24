Rails.application.routes.draw do
  resources :posts
  resources :categories

  resources :users
end
