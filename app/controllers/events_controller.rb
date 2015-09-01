require('json')

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
		@response["Events"].map! do |event|
			# event = JSON.parse(event)
			event_attrs = {
				event_date: event["Date"],
				venue_name: event["Venue"]["Name"],
				venue_city: event["Venue"]["City"],
				venue_state: event["Venue"]["State"],
				artists: event["Artists"],
				ticket_url: event["TicketUrl"]
			}

			Event.new(event_attrs) 
		end

		puts @response["Events"][0].inspect

		render :show
	end

	def create
		@events = Event.create(event_params)
		redirect_to :back
	end

	private

	def event_params
		params.require(:event).permit(:event_date, :venue_name, :venue_city, :venue_state, :artists, :ticket_url)
	end
end
