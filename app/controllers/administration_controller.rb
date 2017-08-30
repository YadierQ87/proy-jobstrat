class AdministrationController < ApplicationController

  #load_and_authorize_resource
  before_action only: [:index, :login,]

  def index
    if user_signed_in?
      @title = 'Administration'
    end
    else
      redirect_to new_user_session_path, :alert => 'Debe autenticarse como administrador'
  end

  def login
    @title = 'Autentication'

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

  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end


end
