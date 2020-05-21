class StudentsController < ApplicationController
  before_action :set_student, only: :show

  def index
    @students = Student.all
  end

  def show
  end

  def activate
    if @student.active
       @student.active = false
     else
       @student.active = true
    end
    @student.active
    @student.save
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end
