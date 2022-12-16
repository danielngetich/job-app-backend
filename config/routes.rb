Rails.application.routes.draw do
  resources :categories, only: [:index, :show]
  resources :employees, only: [:index]
  resources :employers, only: [:index]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
resources :blogs, only: [:index, :show, :create, :destroy]
resources :job_listings, only: [:index, :show, :create, :update, :destroy]
  # Defines the root path route ("/")
  # root "articles#index"
  post "/signup", to: "employees#create"
  post "/signup", to: "employers#create"
  get "/me", to: "employees#show"
  get "/me", to: "employers#show"
  post "/login", to: "sessions#create"
  delete "/logout", to: "sessions#destroy"
end
