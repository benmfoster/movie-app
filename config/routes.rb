Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actor" => "actor#id"
    get "/movie" => "movie#movie"
    get "/movies" => "movie#movies"
    get "/query_actor" => "actor#query"
    get "/actor_url/:wildcard" => "actor#url"
    post "/body_actor" => "actor#body"

  end
end
