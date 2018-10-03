class TeachersController < ApplicationController
  before_action :authenticate_teacher!
  before_action :verify_admin
  before_action :set_teacher, except: :new

  def new
    @teacher = Teacher.new
  end

  def edit
  end

  def update
    @teacher.update teacher_params
    if @teacher.save
      flash[:notice] = 'Teacher successfully updated.'
      redirect_to dashboard_root_path
    else
      flash[:error] = 'Teacher unable to be updated.'
      render 'edit'
    end
  end

  def destroy
    if @teacher.destroy
      flash[:notice] = 'Teacher successfully deleted.'
    else
      flash[:error] = 'Teacher unable to be deleted.'
    end
    redirect_to dashboard_root_path
  end

  private

  def set_teacher
    @teacher = Teacher.find params[:id]
  end

  def verify_admin
    unless current_teacher&.admin?
      flash[:error] = 'You are not an admin.'
      redirect_to dashboard_root_path
    end
  end

  def teacher_params
    params.require(:teacher).permit(:email, :last_name, :first_name, :school_id)
  end
end
