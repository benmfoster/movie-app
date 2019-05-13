class Api::MovieController < ApplicationController

    def movie
        @movie = Movie.find(:id)
        render 'movie.json.jbuilder'
    end

    def movies
        @movies = Movie.all
        render 'movies.jsons.jbuilder'
    end
    
end
