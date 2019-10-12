# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: "Nadia", username: "nadiaf", password: "password")

answers = [
  ["How to generate rails migration", "rails", "stackoverflow.com", "rails g migration table column:type", 1],
  ["How to create react route", "react", "stackoverflow.com", "react stuff", 1]
]

answers.each do |row|
  Answer.create(question:row[0], 
    topic: row[1],
    source_link: row[2],
    answer: row[3],
    user_id: row[4]) 
end 