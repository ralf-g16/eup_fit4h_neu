class EventsController < ApplicationController

	def index
		@events = Event.upcoming
	end

	def show
		@event = Event.find(params[:id])
	end

	def edit
		@event = Event.find(params[:id])
	end

	def new
		@event = Event.new
	end

	def update
		@event = Event.find(params[:id])
		permitted_params = event_params
		@event.update(permitted_params)
		redirect_to event_path(@event.id)
	end

	def create
		permitted_params = event_params
		@event = Event.new(permitted_params)
		@event.save
		redirect_to event_path(@event.id)
	end

	def destroy
		@event = Event.find(params[:id])
		@event.destroy
		redirect_to events_url
	end

	private
		def event_params
			params.require(:event).permit(:name, :location, :price, :start_at, :descrption)
		end
end
