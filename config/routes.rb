Rails.application.routes.draw do
  post 'comments/create'
  post 'comments/update'
  get 'comments/show'

  post 'posts/create'
  get 'posts/show'

  resources :posts
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
