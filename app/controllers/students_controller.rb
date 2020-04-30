class StudentsController < ApplicationController
  before_action :set_student, only: :show
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def activate
    set_student
    @student.active = !@student.active
    @student.save
    p @student

    redirect_to student_path(@student)
  end 

  def update 
    set_student
    @student.update(active: params[:active])

    redirect_to student 
  end 

  private

    def set_student
      @student = Student.find(params[:id])
    end
end