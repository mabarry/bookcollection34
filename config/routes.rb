Rails.application.routes.draw do
  resources :user_books
  resources :users
  root 'user_books#index'
  
  # root "main#index" # makes main/index the homepage and default starting page of the app

  match 'about', to: "main#about", via: :get # when '/about' added at end of port, routes to about page
  match 'hello', to: 'main#hello', via: :get

  get 'main/index'

  resources :categories do
    member do
      get :delete
    end
  end

  resources :books do
    member do
      get :delete
    end
  end

  # get 'books/index'
  # get 'books/new'
  # get 'books/edit'
  # get 'books/show'
  # get 'books/delete'

  # get 'categories/index'
  # get 'categories/show'
  # get 'categories/new'
  # get 'categories/edit'
  # get 'categories/delete'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
