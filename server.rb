require "sinatra"
require "sinatra/reloader"
require "pry"
# require "lib/calculator"


get "/" do
	erb(:home)	
end



post "/calculate_add" do
	"Params data:" + params.inspect
	first = params[:first_number].to_f
	second = params[:second_number].to_f
	result = first + second
	"#{first} + #{second} = #{result}"
end


post "/calculate_substraction" do
	"Params data:" + params.inspect
	first = params[:first_number].to_f
	second = params[:second_number].to_f
	result = first - second
	"#{first} - #{second} = #{result}"
end

post "/calculate_multiplication" do
	"Params data:" + params.inspect
	first = params[:first_number].to_f
	second = params[:second_number].to_f
	result = first * second
	"#{first} x #{second} = #{result}"
end

post "/calculate_division" do
	"Params data:" + params.inspect
	first = params[:first_number].to_f
	second = params[:second_number].to_f
	result = first / second
	"#{first} / #{second} = #{result}"
end


