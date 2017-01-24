class ClassAttendeesController < ApplicationController
 #initialize an empty object for student creation method
  def new
  	@student = ClassAttendee.new 
  end

#add a new student to the Class Attendees table
  def add_student
  	@student = ClassAttendee.new(student_params)
  	if @student.save
  		render '/class-attendance'
  		puts @student
  	end
  end

  private
  	def student_params
  		params
  		.require(:name)
  	end 
end #end ClassAttendees class definition
