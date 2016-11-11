# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

d1 = DateTime.new(2016, 11, 20)
d2 = DateTime.new(2016, 11, 12)
d3 = DateTime.new(2016, 11, 18)
d4 = DateTime.new(2016, 12, 5)
d5 = DateTime.new(2016, 11, 21)

concert1 = Concert.create(artist: 'Pixies', venue: 'Sant Jordi Club', city: 'Barcelona', date: d1, price: 35, description: "Pop and rock")
concert2 = Concert.create(artist: 'Amon Amarth', venue: 'Razzmatazz', city: 'Barcelona', date: d2, price: 5, description: "Heavy metal")
concert3 = Concert.create(artist: 'Dayme Arocena', venue: 'Conservatori Del Liceu', city: 'Barcelona', date: d2, price: 12, description: "Jazz")
concert4 = Concert.create(artist: 'Norah Jones', venue: 'Palacio de Congresos de Madrid', city: 'Madrid', date: d3, price: 25, description: "Jazz and blues")
concert5 = Concert.create(artist: 'The Cure', venue: 'Barclaycard Centre', city: 'Madrid', date: d1, price: 30, description: "Rock and heavy metal")
concert6 = Concert.create(artist: 'Alejandro Sanz', venue: 'Barclaycard Centre', city: 'Madrid', date: d4, price: 32, description: "Pop and latin")
concert7 = Concert.create(artist: 'Placebo', venue: 'Ziggo Dome', city: 'Amsterdam', date: d5, price: 40, description: "Emo rock")
concert8 = Concert.create(artist: 'Red Hot Chili Peppers', venue: 'Wiener Stadthalle', city: 'Vienna', date: d5, price: 70, description: "Rock and metal")