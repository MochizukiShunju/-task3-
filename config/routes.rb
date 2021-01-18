Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  resources :users, only: [:show, :edit, :update, :new, :index]
  resources :books
  resources :homes, only: [:top]
  resources :post_images
end
