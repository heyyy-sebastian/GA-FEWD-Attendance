class ClassAttendeesController < ApplicationController

 def index
  @students = ClassAttendee.all
 end

 #initialize an empty object for student creation method
  def new
  	@student = ClassAttendee.new
  end

#add a new student to the Class Attendees table
  def create
  	puts student_params
  	@student = ClassAttendee.new(student_params)
  	if @student.save
  		puts "student was saved"
  		render '/class-attendance'
    else
      puts "not saved :("
      redirect_to '/class-attendance'
  	end
  end

  #def all_students
  #	ClassAttendee.find_each do |student|
  #		puts student.name
  #	end
  #end

  private
  	def student_params
  		params
      .require(:name).permit(:name).to_h
      byebug
  	end
end #end ClassAttendees class definition
