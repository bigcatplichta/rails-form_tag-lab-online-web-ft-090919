class StudentsController < ApplicationController
  
  def index
    @students = Student.all
  end

  def show
    @student = Student.find(params[:id])
  end

  def create
    session[:form_params] = params.inspect
    @student = Student.create(first_name: params[:student][:first_name], last_name: params[:student][:last_name])
    # use permit! for mass assignment above?
    redirect_to new_student_path
  end

  def new
  end

end
