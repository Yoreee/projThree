class EventsController < ApplicationController

	def index

	end

	def search_location
		@response = HTTParty.get("http://api.jambase.com/events?zipCode=" + params[:zip] + "&page=0&api_key=x964eyu32g34mdftwybccx64&o=json")
		render :show
	end

	def search_artist
		@response = HTTParty.get("http://api.jambase.com/artists?name=" + params[:name].gsub(/ /, '+') + "&page=0&api_key=x964eyu32g34mdftwybccx64")
		render :artists
	end

	def search_id
		@response = HTTParty.get("http://api.jambase.com/events?artistId=" + params[:id] + "&page=0&api_key=x964eyu32g34mdftwybccx64")
		render :show
	end

end
