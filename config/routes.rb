Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/actor" => "actor_controller#id"
    get "/movie" => "movie_controller#movie"
    get "/movies" => "movie_controller#movies"
  end
end
