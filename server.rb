require "sinatra"
require "sinatra/reloader"
require "pry"
require "./lib/calculator.rb"


get "/" do
	erb(:home)	
end



post "/calculate_add" do
	"Params data:" + params.inspect
	" #{params[:first_number].to_f} + #{params[:second_number].to_f} = #{Calculator.new.add(params[:first_number].to_f, params[:second_number].to_f)}"
end


post "/calculate_substraction" do
	"Params data:" + params.inspect
	" #{params[:first_number].to_f} - #{params[:second_number].to_f} = #{Calculator.new.substract(params[:first_number].to_f, params[:second_number].to_f)}"
end

post "/calculate_multiplication" do
	"Params data:" + params.inspect
	" #{params[:first_number].to_f} x #{params[:second_number].to_f} = #{Calculator.new.multiply(params[:first_number].to_f, params[:second_number].to_f)}"
end

post "/calculate_division" do
	"Params data:" + params.inspect
	" #{params[:first_number].to_f} / #{params[:second_number].to_f} = #{Calculator.new.divide(params[:first_number].to_f, params[:second_number].to_f)}"
end


