class TeachersController < ApplicationController
  def update_password
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
