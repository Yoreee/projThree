class EventsController < ApplicationController

	def index

	end

	def search_location
		@response = HTTParty.get("http://api.jambase.com/events?zipCode=" + params[:zip] + "&page=0&api_key=XXX")
		render :show
	end

	def search_artist
		@response = 
	end

end
