Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post "/users" => "users#create"
  post "/sessions" => "sessions#create"

  get "/ingredients" => "ingredients#index"
  post "/ingredients" => "ingredients#create"
  get "/ingredients/:id" => "ingredients#show"

  get "/pantry_items" => "pantry_items#index"
  post "/pantry_items" => "pantry_items#create"
  delete "/pantry_items/:id" => "pantry_items#destroy"
  patch "/pantry_items/:id" => "pantry_items#update"

  get "/search_recipes" => "search_recipes#index"

  post "/fav_recipes" => "fav_recipes#create"
  delete "/fav_recipes/:id" => "fav_recipes#destroy"
  get "/fav_recipes" => "fav_recipes#index"
  get "/fav_recipes/:id" => "fav_recipes#show"
end
