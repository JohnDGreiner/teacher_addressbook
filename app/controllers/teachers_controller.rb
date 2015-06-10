class TeachersController < ApplicationController

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

end
