# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
movie1 = Movie.create(title: 'Casablanca', poster: 'https://www.movieposter.com/posters/archive/main/23/MPW-11602', year: 1942, synopsis: 'In Casablanca, Morocco in December 1941, a cynical American expatriate meets a former lover, with unforeseen complications.' )

movie2 = Movie.create(title: 'To Have And Have Not', poster: 'http://images.moviepostershop.com/to-have-and-have-not-movie-poster-1944-1010699786.jpg', year: 1944, synopsis: 'During World War II, American expatriate Harry Morgan helps transport a French Resistance leader and his beautiful wife to Martinique while romancing a sensuous lounge singer.' )

movie3 = Movie.create(title: 'The Big Sleep', poster: 'https://s-media-cache-ak0.pinimg.com/originals/d4/c3/10/d4c310fca0fa2ce532a366004a6c5cb0.jpg', year: 1946, synopsis: 'Private detective Philip Marlowe is hired by a rich family. Before the complex case is over, he\'s seen murder, blackmail, and what might be love.' )

movie4 = Movie.create(title: 'Maltese Falcon', poster: 'http://images.moviepostershop.com/the-maltese-falcon-movie-poster-1941-1010267728.jpg', year: 1941, synopsis: 'A private detective takes on a case that involves him with three eccentric criminals, a gorgeous liar, and their quest for a priceless statuette.')

movie5 = Movie.create(title: 'All About Eve', poster: 'http://images.moviepostershop.com/all-about-eve-movie-poster-1950-1010458800.jpg', year: 1950, synopsis: 'An ingenue insinuates herself into the company of an established but aging stage actress and her circle of theater friends.' )
