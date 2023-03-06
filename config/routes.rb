Rails.application.routes.draw do
  resources :ceps
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  mount Blazer::Engine, at: "blazer"
  # Defines the root path route ("/")
  # root "articles#index"
end
