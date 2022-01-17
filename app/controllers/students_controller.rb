class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :toggle_activate]
  
  def index
    @students = Student.all
  end

  def show
    set_student
  end

  def toggle_activate
    set_student.toggle!(:active)
    render "show"
  end

  private

    def set_student
      @student = Student.find(params[:id])
    end
end