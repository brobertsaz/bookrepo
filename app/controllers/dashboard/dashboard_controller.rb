class Dashboard::DashboardController < ApplicationController
  before_action :authenticate_user!
  before_action :set_school

  def index
    @teachers = @school.teachers
    @students = @school.students
  end

  private

  def set_school
    if current_teacher
      @school = current_teacher.school
    elsif current_student
      @school = current_student.school
    end
  end
end