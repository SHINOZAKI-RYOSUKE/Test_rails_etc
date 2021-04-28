Rails.application.routes.draw do
  devise_for :users
  root to: "post_images#index"
  get 'homes/top'
  resources :post_images, only:[:new, :create, :index, :show, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
