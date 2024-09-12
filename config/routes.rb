Rails.application.routes.draw do

  devise_for :users
  get root :to => 'homes#top'
  get 'about' => 'homes#about'

  resources :post_images, only: [:new, :create, :index, :show :destroy]
end
