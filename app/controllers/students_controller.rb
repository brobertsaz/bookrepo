class StudentsController < ApplicationController
  before_action :authenticate_teacher!
  before_action :verify_admin
  before_action :set_student, except: :new

  def new
    @student = Student.new
  end

  def edit
  end

  def update
    @student.update student_params
    if @student.save
      flash[:notice] = 'Student successfully updated.'
      redirect_to dashboard_root_path
    else
      flash[:error] = 'Student unable to be updated.'
      render 'edit'
    end
  end

  def destroy
    if @student.destroy
      flash[:notice] = 'Student successfully deleted.'
    else
      flash[:error] = 'Student unable to be deleted.'
    end
    redirect_to dashboard_root_path
  end

  private

  def set_student
    @student = Student.find params[:id]
  end

  def verify_admin
    unless current_teacher&.admin?
      flash[:error] = 'You are not an admin.'
      redirect_to dashboard_root_path
    end
  end

  def student_params
    params.require(:student).permit(:email, :last_name, :first_name, :school_id)
  end


end
