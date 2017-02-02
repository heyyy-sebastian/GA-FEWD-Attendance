class ClassAttendeesController < ApplicationController

   #initialize an empty object for student creation method
  def new
    @class_attendee = ClassAttendee.new  
    @class_attendees = ClassAttendee.all
  end

  #add a new student to the Class Attendees table
  def create
    #save the new student only if today's date matches date entered
    #todays_date = Time.now.to_a[3..5].reverse.to_s.gsub(", ","-0")
    
    #if todays_date == @date
      @class_attendee = ClassAttendee.new(class_attendee_params)

      if @class_attendee.save
        puts "student was saved"
      else
      # You should probably create an error flash here
      # The puts statement will only be visible in the server log
        puts "not saved :("
      end
    #end

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
