class TeachersController < ApplicationController
  before_action :authenticate_teacher!

  def new
    @Teacher = Teacher.new
  end
end
