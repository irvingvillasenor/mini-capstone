Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  get "/products" => "products#index"
  get "/products/new" => "products#new"
  get "/products/:id" => "products#show"
  post "/products" => "products#create"
  get "/products/:id/edit" => "products#edit"
  delete "/products/:id" => "products#destroy"


  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    # get "/products" => "products#all_products"
    # get "/laptop" => "products#laptop_action"
    get "/products" => "products#index"
    get "/products/:id" => "products#show"
    post "/products" => "products#create"
    patch "products/:id" => "products#update" 
    delete "/products/:id" => "products#destroy"

    post "/users" => "users#create"
    post "/sessions" => "sessions#create"

    post "/orders" => "orders#create"
    get "/orders" => "orders#index"

    post "/cartedproducts" => "carted_products#create"
    get "/cartedproducts" => "carted_products#index"
  end
end
