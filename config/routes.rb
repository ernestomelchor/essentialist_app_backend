Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    #User routes and actions
    get "/users" => "users#index"
    get "/users/:id" => "users#show"
    post "/users" => "users#create"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"

    #List routes and actions
    get "/lists" => "lists#index"
    get "/lists/:id" => "lists#show"
    post "/lists" => "lists#create"
    patch "/lists/:id" => "lists#update"
    delete "/lists/:id" => "lists#destroy"

    #Item routes and actions
    get "/items" => "items#index"
    get "/items/:id" => "items#show"
    post "/items" => "items#create"
    delete "/items/:id" => "items#destroy"

    #Session route and action
    post "/sessions" => "sessions#create"
  end
end
