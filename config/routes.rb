Rails.application.routes.draw do
  get 'postimages/new'
  get 'postimages/index'
  get 'postimages/show'
  devise_for :users
  get root :to => 'homes#top'
  get 'about' => 'homes#about'
  
  resource :post_images, only: [:new, :index, :show]
end
