class EventsController < ApplicationController

	def index

	end

	def search_location
		@response = HTTParty.get("http://api.jambase.com/events?zipCode=" + params[:zip] + "&page=0&api_key=" + ENV["JAMBASE_VAR"] + "&o=json")
		render :show
	end

	def search_artist
		@response = HTTParty.get("http://api.jambase.com/artists?name=" + params[:name].gsub(/ /, '+') + "&page=0&api_key=" + ENV["JAMBASE_VAR"])
		render :artists
	end

	def search_id
		@response = HTTParty.get("http://api.jambase.com/events?artistId=" + params[:id] + "&page=0&api_key=" + ENV["JAMBASE_VAR"])
		render :show
	end

end
