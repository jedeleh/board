Rails.application.routes.draw do
  get 'comments/create'
  get 'comments/update'
  get 'comments/show'
  resources :posts
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
