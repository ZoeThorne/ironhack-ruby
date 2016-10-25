require 'sinatra'
require 'sinatra/reloader' if development?


# get "/" do
# erb(:home)
# end

# get "/add" do
#   erb(:add)
# end

# get "/subtract" do
#   erb(:subtract)
# end

# get "/divide" do
#   erb(:divide)
# end

# get "/multiply" do
#   erb(:multiply)
# end

post "/calculate" do
	# Stores the numbers that were entered (as floats)
	@first = params[:first_num].to_f
	@second = params[:second_num].to_f

	# Stores which operation button was pressed
	@operation = params["operation"]
	erb(:calculate)
end

post "/test" do
	# Stores the result of the last calculation (button as an input)
	result = params[:btn].to_f

	# Saves the result
	stored_result = Marshal.dump(result)

	# Retrieves the result and saves as an instance variable
	@retrieved_result = Marshal.load(stored_result)
	erb(:calculate_again)
end

post "/time" do
	# Saves which city was chosen (radio buttons as input)
	@city = params[:city]
	erb(:time)
end

# get "/calculate_add" do
#   first = @first
#   second = @second
#   result = first + second
#   "#{first} + #{second} = #{result}"

#   # Usually you should then do:
#   # redirect to(/.another_page")
# end

# post "/calculate_subtract" do
# 	first = params[:first_num].to_f
#   second = params[:second_num].to_f
#   result = first - second
#   "#{first} - #{second} = #{result}"
# end

# post "/calculate_divide" do
# 	first = params[:first_num].to_f
#   second = params[:second_num].to_f
#   result = first / second
#   "#{first} / #{second} = #{result}"
# end

# post "/calculate_multiply" do
# 	first = params[:first_num].to_f
#   second = params[:second_num].to_f
#   result = first * second
#   "#{first} x #{second} = #{result}"
# end
