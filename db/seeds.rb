# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

nadia = User.create(name: "Nadia", username: "nadiaf", password: "password")
sarah = User.create(name: "Sarah", username: "Sarah1", password: "password")

answer1 = Answer.create(question: "how to create rails app", 
                            source_link: "stackoverflow.com",
                            answer_param: "rails new appname",
                            user_id: "1")

answer2 = Answer.create(question: "how to create react app",
                            source_link: "stackoverflow.com",
                            answer_param: "npx create-react-app",
                            user_id: "2")
