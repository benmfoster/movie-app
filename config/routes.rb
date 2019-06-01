Rails.application.routes.draw do

  namespace :api do

    #RESTful actions for actor controller
    get "/actors" => "actor#index"
    post "/actor" => "actor#create"
    get "/actor/:id" => "actor#show"
    patch "/actor/:id" => "actor#update"
    delete "actor/:id" => "actor#destroy"

    #RESTful actions for movie controller
    get "/movies" => "movie#index"
    post "/movies" => "movie#create"
    get "/movies/:id" => "movie#show"
    patch "/movies/:id" => "movie#update"
    delete "movies/:id" => "movie#destroy"

    post "/users" => "users#create"

    post "/sessions" => "sessions#create"

    post "/movie_genres" => "movie_genres#create"

  end

end

# Rails.application.routes.draw do

#   # GET "/books" - Gets all the books we have
#   get "/books" => "books#index"

#   # POST "/books" - Creates a new book, add it to our database
#   post "/books" => "books#create"

#   # GET "/books/3" - Just get one specific book (that already exists)
#   get "/books/:id" => "books#show"

#   # PATCH "/books/3" - Updates a specific book
#   patch "/books/:id" => "books#update"

#   # DELETE "/books/3" - Deletes a specific book
#   delete "/books/:id" => "books#destroy"

# end
