class EventsController < ApplicationController

	def index

	end

	def search
		@response = HTTParty.get("http://api.jambase.com/events?zipCode=" + params[:zip] + "&page=0&api_key=x964eyu32g34mdftwybccx64&o=json")
		render :show
	end

end
