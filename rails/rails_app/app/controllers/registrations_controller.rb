class RegistrationsController < ApplicationController
	before_action :set_event

	def index
		@registrations = @event.registrations
	end

	def new
		@registrations = @event.registrations.new
	end

	def create
		@registrations = @event.registrations.new(registration_params)
		if @registrations.save
			#@flash[:notice] = "Registrierung erfolgreich"
			redirect_to event_path(@event.id), notice: "Registrierung erfolgreich!"
		else
			render "new"
		end

	end

	private
	def registration_params
		params.require(:registration).permit(:name, :email, :how_heard)
	end

	def set_event
		@event = Event.find(params[:event_id])		
	end

end