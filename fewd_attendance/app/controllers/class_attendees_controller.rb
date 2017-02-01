class ClassAttendeesController < ApplicationController
  def index
    @class_attendees = ClassAttendee.all
  end

   #initialize an empty object for student creation method
  def new
    @class_attendee = ClassAttendee.new
  end

  #add a new student to the Class Attendees table
  def create
    @class_attendee = ClassAttendee.new(class_attendee_params)

    if @class_attendee.save
      puts "student was saved"
    else
      # You should probably create an error flash here
      # The puts statement will only be visible in the server log
      puts "not saved :("
    end

    redirect_to '/class-attendance'
    # This just reloads the page since the routes are set up weird
  end

  private

  def class_attendee_params
    params
      .require(:class_attendee)
      .permit(:name)
  end
end
