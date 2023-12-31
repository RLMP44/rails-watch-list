# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

require "open-uri"
require "json"

url = 'http://tmdb.lewagon.com/movie/popular?language=en-US&page=1'
movies_serialized = URI.open(url).read
movies = JSON.parse(movies_serialized)
movies_list = movies['results']
movies_list.each do |movie|
  movie_params = {
    title: movie['original_title'],
    overview: movie['overview'],
    poster_url: "https://image.tmdb.org/t/p/w500" + movie['poster_path'],
    rating: movie['vote_average']
  }
  Movie.create(movie_params)
end
