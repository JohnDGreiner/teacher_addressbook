class SessionsController < ApplicationController
  # before_action :logged_in?

  def login

    if request.post?
      teacher = Teacher.find_by_email(params[:email])
      if teacher && teacher.authenticate(params[:password])
        session[:user_id] = teacher.id
        redirect_to parents_path, notice: "Logged in."
      else
        flash.now[:notice] = "Incorrect Email or Password"
      end
    end
  end

  def logout
    session[:user_id] = nil
    redirect_to sessions_login_path, notice: "Successfully logged out."
  end

end
