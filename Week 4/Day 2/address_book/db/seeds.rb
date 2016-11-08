# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

contact1 = Contact.create(name: "Testy McTestFace", address: "1 Test Street, Testville", phone_number: "01234 567890", email: "testy@gmail.com", favourite: false)
contact2 = Contact.create(name: "Sherlock Holmes", address: "221b Baker Street, London", phone_number: "01372 284628", email: "sherlock@gmail.com", favourite: false)
contact3 = Contact.create(name: "Barack Obama", address: "White House, Washington DC", phone_number: "02746 274926", email: "barack@gmail.com", favourite: false)
contact4 = Contact.create(name: "Mickey Mouse", address: "Disneyland, Paris", phone_number: "09264 284926", email: "mickey@gmail.com", favourite: false)
contact5 = Contact.create(name: "Queen Elizabeth", address: "Buckingham Palace, London", phone_number: "01294 284620", email: "liz@gmail.com", favourite: true)