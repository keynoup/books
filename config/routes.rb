Rails.application.routes.draw do
  devise_for :users
  root to: 'homes#top'
  get 'home/about' => 'homes#about'

  resources :books, only: [:update, :create, :index, :show, :edit, :destroy]

  resources :users, only: [:update, :index, :show, :edit]
  get 'users' => 'users#index'

end
