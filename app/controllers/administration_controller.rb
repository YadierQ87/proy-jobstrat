class AdministrationController < ApplicationController
  #layout :admin_layout
  def index
    @title = 'Administration'
    if request.get?
      session[:user_id] = nil
      @user = User.new
    else
      @user = User.new(params[:user])
      logged_in_user = @user.try_to_login

      if logged_in_user
        session[:user_id] = logged_in_user.id
        redirect_to(:action => "index")
      else
        flash[:notice] = "Invalid user/password combination"
      end
    end
  end

  def jobs
    @title = 'CRUD Jobs'
  end

  def employees
    @title = 'CRUD Employees'
  end

  def companies
    @title = 'CRUD Companies'
  end

  def categories
    @title = 'CRUD Categories'
  end
end
