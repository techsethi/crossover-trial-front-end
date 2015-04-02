require 'sinatra'
require File.expand_path("../environment", __FILE__)


get "/" do
	erb :index
end

get "/check_in" do
	erb :check_in	
end


