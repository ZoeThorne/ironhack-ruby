# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "Testy McTestFace", email: "testy@gmail.com")
user1.products.create(title: "violin", description: "A vintage violin played by Sherlock Holmes", deadline: DateTime.tomorrow, user: user1)
user1.products.create(title: "napkin", description: "A napkin folder into a swan", deadline: DateTime.tomorrow, user: user1)

user2 = User.create(name: "Zoe", email: "z@gmail.com")
user2.products.create(title: "sloth", description: "A friendly animal", deadline: DateTime.today, user: user2)

user3 = User.create(name: "Nick", email: "n@gmail.com")
