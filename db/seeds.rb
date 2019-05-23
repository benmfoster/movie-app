# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Actor.destroy_all
# Movie.destroy_all

Actor.create([
    {first_name: "Benedict", last_name: "Cumberbatch", known_for: "Sherlock", gender: "M", age: 102, movie_id: 9},
    {first_name: "James", last_name: "McCuthold", known_for: "The Thin Red Line", gender: "M", age: 4, movie_id: 10},
    {first_name: "Gerald", last_name: "Saviour", known_for: "Jesus Christ Superstar", gender: "F", age: 51, movie_id: 11}
])

# Movie.create([
#     {title: "Lincoln", year: 2012, plot: "Abraham Lincoln frees the slaves.", director: "Steven Spielberg", english: true},
#     {title: "James Bond", year: 2024, plot: "TBD", director: "TBD", english: true},
#     {title: "In the Mood for Love", year: 1998, plot: "Rich Chinese people experience the end of the pre-Communist era.", director: "Wong Kar-wai", english: false}
# ])