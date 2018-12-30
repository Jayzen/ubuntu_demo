Rails.application.routes.draw do
  resources :comments
  resources :categories
  root "articles#index"
  resources :articles
end
