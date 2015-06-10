class TeachersController < ApplicationController
  before_action :logged_in?

  def update_password

    if request.post?
      teacher = Teacher.find(session[:user_id])
      teacher.password = params[:password]
      teacher.password_confirmation = params[:password_confirmation]
      if teacher.save
        redirect_to parents_path, notice: "Password updated."
      else
        redirect_to teachers_update_password_path, notice: 'Password and conformation password must match.'

      end
    end

  end

  def update_email

    if request.post?
      teacher = Teacher.find(session[:user_id])
      teacher.email = params[:email]
      teacher.save
      redirect_to parents_path, notice: "Email updated."
    end

  end

  private

    def logged_in?
      if Teacher.find_by_id(session[:user_id])
      else
        redirect_to sessions_login_path, notice: 'You must login before accessing this page.'
      end
    end


end
