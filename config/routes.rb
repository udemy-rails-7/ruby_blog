Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "/",to: "articles#index"
  resources :articles do
    resources :comments
  end
  # get "/articles/:id/edit", to:"articles#edit"
  # delete "/articles/:id", to:"articles#destroy"
  # patch "articles/:id", to:"articles#update"
  # post "/articles",to:"articles#create"
  # get "/articles/new",to:"articles#new"
  # get "/articles/:id", to: "articles#show", as: :article
  root "articles#index"
  # Defines the root path route ("/")
  # root "articles#index"
  
end
