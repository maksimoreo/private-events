class EventAttendancesController < ApplicationController
  before_action :authenticate_user!, only: [:create]

  def create
    event = Event.find_by_id(params[:event_id])

    if event.nil?
      flash[:alert] = 'Cannot find this event'
      redirect_to events_path
    else
      @ea = EventAttendance.new(attendee: current_user, attended_event_id: params[:event_id])

      if @ea.save
        flash[:notice] = "Successfully registered for this event!"
        redirect_to event
      else
        flash[:alert] = 'Cannot register for this event'
        redirect_to event
      end
    end
  end

  private

  def event_attendance_params
    params
  end
end
