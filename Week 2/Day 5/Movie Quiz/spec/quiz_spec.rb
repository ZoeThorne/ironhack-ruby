require_relative("../models/quiz.rb")

RSpec.describe Quiz do
	let(:quiz) { Quiz.new}

	it "should search for a movie based on a given word" do
		expect(quiz.search("funny")).to be_truthy
	end

	it "should store the first nine movies from a search" do
		quiz.search("funny")
		quiz.add_movies
		expect(quiz.movies.length).to eq(9)
	end


end