require "sinatra"
require "sinatra/reloader"
require "pry"


get "/add" do
	erb(:add)	
end