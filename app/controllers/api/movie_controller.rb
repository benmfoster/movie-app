class Api::MovieController < ApplicationController

    before_action :authenticate_admin, except: [:index, :show]
    
        def index
            @movies = Movie.all.select {:english}
            render "index.json.jbuilder"
        end
    
        def show
            @movie = Movie.find(params[:id])
            render "show.json.jbuilder"
        end
    
        def create
            @movie = Movie.new(
                title: params[:title],
                year: params[:year],
                plot: params[:plot],
                director: params[:director]
                )
                if @movie.save
                    # happy path
                    render 'create.json.jbuilder'
                else
                    # sad path
                    render json: {errors: @movie.errors.full_messages}, status: :unprocessable_entity
                end
        end
    
        def update
            @movie = Movie.find(params[:id])
    
            @movie.title = params[:title] || @movie.title
            @movie.year = params[:year] || @movie.year
            @movie.plot = params[:plot] || @movie.plot
            @movie.director = params[:director] || @movie.director
    
            @movie.save
            render 'show.json.jbuilder'
        end
    
        def destroy
            @movie = Movie.find(params[:id])
            @movie.destroy
            render json: {message: "Movie successfully destroyed!"}
        end
     
end
