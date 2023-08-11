# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
List.destroy_all

# require 'faker'
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
30.times do
  Movie.create( title: Faker::Movie.title, overview: Faker::TvShows::BojackHorseman.quote )
end

list_names = ["Horror", "Action", "Featuring Alan", "Romance", "Comedy"]

list_names.each do |name|
  List.create( name: name)
end
