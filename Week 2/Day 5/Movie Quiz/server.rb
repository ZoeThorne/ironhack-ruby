require 'sinatra'
require 'sinatra/reloader' if development?
require_relative 'models/quiz.rb'

quiz = Quiz.new

get "/" do 
	erb(:search)
end

post "/get_movies" do
	word = params[:word]
	@word = Marshal.dump(word)
	File.open('./public/word.text', 'w') {|f| f.write(Marshal.dump(@word)) }
	quiz.search(word)
	quiz.add_movies
	quiz.pick_a_movie
	@films = quiz.movies
	@correct_film = quiz.correct_film
	erb(:quiz)
end

post "/check" do
	@guessed_film_date = params[:movie]
	@correct_film = quiz.correct_film
	erb(:answer) 
end

post "/try_again" do
	word = Marshal.load(File.read('./public/word.text'))
	quiz.pick_a_movie
	@films = quiz.movies
	@correct_film = quiz.correct_film
	erb(:quiz)
end