class Movie < ApplicationRecord
    validates :title, :year, :plot, :director, :english, presence: true
    validates :year, length: {is: 4}
    has_many :actors
    has_many :movie_genres
    has_many :genres, through: :movie_genres
end
