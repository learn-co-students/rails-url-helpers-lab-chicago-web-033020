class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :activate]
  
  def index
    @students = Student.all
  end

  def show
  end

  def activate
    # p "hiya"
    # @student.active = true
    # if @student.activate == false
    #   @student.activate = true
    # else
    #   @student.activate = false
    # end
     @student.active = !@student.active
     @student.save
    redirect_to student_path(@student)
    
  
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end