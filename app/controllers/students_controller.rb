class StudentsController < ApplicationController
  before_action :authenticate_teacher!

  def new
    @student = Student.new
  end

end
