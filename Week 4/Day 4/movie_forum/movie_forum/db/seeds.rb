# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
movie1 = Movie.create(title: 'Casablanca', poster: 'https://www.movieposter.com/posters/archive/main/23/MPW-11602', year: 1942, synopsis: 'In Casablanca, Morocco in December 1941, a cynical American expatriate meets a former lover, with unforeseen complications.' )
movie1.comments.create(username: 'LaurenB', content: 'The lead male is cute but I didn\'t like Ingrid Bergman.')
movie1.comments.create(username: 'Louis', content: 'The scene with the national anthems is the best scene in any movie ever!')
movie1.comments.create(username: 'BogiesGirl', content: 'Here\'s looking at you, kid!')

movie2 = Movie.create(title: 'To Have And Have Not', poster: 'http://images.moviepostershop.com/to-have-and-have-not-movie-poster-1944-1010699786.jpg', year: 1944, synopsis: 'During World War II, American expatriate Harry Morgan helps transport a French Resistance leader and his beautiful wife to Martinique while romancing a sensuous lounge singer.' )
movie2.comments.create(username: 'LaurenB', content: 'Best Bogie/Bacall film, in my opinion!')
movie2.comments.create(username: 'Steve', content: 'Anybody got a match?')
movie2.comments.create(username: 'BnW4Eva', content: 'Lauren Bacall\'s singing is really underrated in this film.')

movie3 = Movie.create(title: 'The Big Sleep', poster: 'https://s-media-cache-ak0.pinimg.com/originals/d4/c3/10/d4c310fca0fa2ce532a366004a6c5cb0.jpg', year: 1946, synopsis: 'Private detective Philip Marlowe is hired by a rich family. Before the complex case is over, he\'s seen murder, blackmail, and what might be love.' )
movie3.comments.create(username: 'Ray', content: 'Has anybody worked out who killed the chauffeur yet?')

movie4 = Movie.create(title: 'Maltese Falcon', poster: 'http://images.moviepostershop.com/the-maltese-falcon-movie-poster-1941-1010267728.jpg', year: 1941, synopsis: 'A private detective takes on a case that involves him with three eccentric criminals, a gorgeous liar, and their quest for a priceless statuette.')
movie4.comments.create(username: 'Joe Giza', content: 'This film really is the stuff that dreams are made of.')
movie4.comments.create(username: 'BnW4Eva', content: 'Detectives, dames and hardboiled dialogue - this film has it all.')
movie4.comments.create(username: 'BogiesGirl', content: 'This is one of my favourite Bogart films!')

movie5 = Movie.create(title: 'All About Eve', poster: 'http://images.moviepostershop.com/all-about-eve-movie-poster-1950-1010458800.jpg', year: 1950, synopsis: 'An ingenue insinuates herself into the company of an established but aging stage actress and her circle of theater friends.' )
movie5.comments.create(username: 'Margo', content: 'Best film ever made. No contest.')
movie5.comments.create(username: 'FilmCritic', content: 'If you haven\'t seen this film yet, fasten your seatbelts - it\'s going to be a bumpy ride!')
movie5.comments.create(username: 'ADW', content: 'The dialogue in this film is simply stunning.')
movie5.comments.create(username: 'FilmNerd', content: 'Did you know that Anne Baxter played Margo in the stage version? So ironic!')