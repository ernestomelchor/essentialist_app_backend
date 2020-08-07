# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# 3 Users
User.create!(name: "Ernesto", username: "ernestomelchor", email: "ernesto@example.com", password: "adminUser88")
User.create!(name: "Linzi", username: "linzimelchor", email: "linzi@example.com", password: "userUser")
User.create!(name: "Orlando", username: "orlandomelchor", email: "orlando@example.com", password: "userUser")

# 4 Lists
List.create!(name: "Groceries", user_id: 1)
List.create!(name: "Activities", user_id: 2)
List.create!(name: "Machine Learning", user_id: 3)
List.create!(name: "Daily Habits", user_id: 1)

#10 Items
Item.create!(description: "rice", list_id: 1, user_id: 1)
Item.create!(description: "beans", list_id: 1, user_id: 1)
Item.create!(description: "puzzles", list_id: 2, user_id: 2)
Item.create!(description: "blocks", list_id: 2, user_id: 2)
Item.create!(description: "reading", list_id: 2, user_id: 2)
Item.create!(description: "neural networks", list_id: 3, user_id: 3)
Item.create!(description: "AI", list_id: 3, user_id: 3)
Item.create!(description: "popcorn", list_id: 1, user_id: 1)
Item.create!(description: "go for a walk", list_id: 2, user_id: 2)
Item.create!(description: "coding video", list_id: 3, user_id: 3)
Item.create!(description: "code", list_id: 4, user_id: 1)
Item.create!(description: "exercise", list_id: 4, user_id: 1)
Item.create!(description: "eat", list_id: 4, user_id: 1)
Item.create!(description: "sleep", list_id: 4, user_id: 1)
