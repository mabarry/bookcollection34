Rails.application.routes.draw do

  root "main#index" # makes main/index the homepage and default starting page of the app

  match 'about', to: "main#about", via: :get # when '/about' added at end of port, routes to about page
  match 'hello', to: 'main#hello', via: :get

  get 'main/index'
  get 'books/index'
  get 'books/new'
  get 'books/edit'
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
