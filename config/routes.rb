Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root "articles#index"
  # get "/articles", to: "articles#index"
  # get "/articles/:id", to: "articles#show"
  # devise_for :users
  resources :articles do
    resources :comments
  end

  # Defines the root path route ("/")
  # root "articles#index"
end
