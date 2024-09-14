Rails.application.routes.draw do

  devise_for :users
  get root :to => 'homes#top'
  get 'about' => 'homes#about'

  resources :post_images, only: [:new, :create, :index, :show, :destroy] do
    resource :favorite, only: [:create, :destroy]
    resources :post_comments, only: [:create]
  end

  resources :users, only: [:show, :edit, :update]

  resources :post_images, only: [:new, :create, :index, :show, :destroy]




end
