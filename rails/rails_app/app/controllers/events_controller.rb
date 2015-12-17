class EventsController < ApplicationController

	def index
		@events = Event.all
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
		if @event.update(event_params)
		flash[:notice] = "gut gespeichert ist halb gewonnen."
		redirect_to event_path(@event.id)
		else
			render "edit"
		end	
	end

	def create
		@event = Event.new(event_params)
		if @event.save
			flash[:notice] = "gut gespeichert ist halb gewonnen."
			redirect_to event_path(@event.id)
		else
			render "new"
		end
	end

	def destroy
		@event = Event.find(params[:id])
		if @event.destroy
		flash[:notice] = "endlich gelöscht."
		redirect_to events_url
	end
	end

	private
		def event_params
			params.require(:event).permit(:name, :location, :price, :start_at, :descrption, :image_file, :capacity)
		end
end
