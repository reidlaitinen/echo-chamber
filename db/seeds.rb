# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


100.times do |post|
  author = Faker::SiliconValley.character
  text = Faker::SiliconValley.quote
  image = Faker::Fillmurray.image(true)
  likes = rand(0..50)
  dislikes = rand(0..50)
  Post.create(author: author, text: text, image: image, likes: likes, dislikes: dislikes)
  10.times do |comment|
    author = Faker::SiliconValley.character
    text = Faker::SiliconValley.quote
    image = Faker::Fillmurray.image(true)
    likes = rand(0..50)
    dislikes = rand(0..50)
    Comment.create(post_id: post,author: author, text: text, image: image, likes: likes, dislikes: dislikes)
  end
end