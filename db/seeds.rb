require 'faker'
puts "Destroying previous DB"
Movie.destroy_all

puts "Populating database..."

10.times do
  movie = Movie.create!(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote
  )
  puts "Movie: #{movie.id} was created"
end
puts "Done"
