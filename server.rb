require "sinatra"
require "sinatra/reloader"
require "pry"
require "./lib/calculator.rb"


get "/" do
	erb(:home)	
end


 post "/calculate" do
 	"Params data:" + params.inspect
 	@operation = params[:operation] 
 	case @operation
 	when "addition"
 		" #{params[:first_number].to_f} + #{params[:second_number].to_f} = #{Calculator.new.add(params[:first_number].to_f, params[:second_number].to_f)}"		
	when "substraction"
		" #{params[:first_number].to_f} - #{params[:second_number].to_f} = #{Calculator.new.substract(params[:first_number].to_f, params[:second_number].to_f)}"
	when "multiplication"
		" #{params[:first_number].to_f} x #{params[:second_number].to_f} = #{Calculator.new.multiply(params[:first_number].to_f, params[:second_number].to_f)}"
 	else
		" #{params[:first_number].to_f} / #{params[:second_number].to_f} = #{Calculator.new.divide(params[:first_number].to_f, params[:second_number].to_f)}"
 	end
 	
 end


