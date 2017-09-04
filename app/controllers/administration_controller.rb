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

  # muestra un listado de todas las aplicationes k ha emitido un usaurio (para employees)
  def jobs
    @title = 'CRUD Jobs'
    @aplyjobs = Aplicationjob.all.where(:employee_id => current_user.employee.id).order("id DESC")
  end

  # muestra un listado de todas las solicitudes de usuarios x trabajos (para companies)
  def employees
    @title = 'CRUD Employees'
    @jobs = Company.find(current_user.company_id).jobs #todos los trabajos publicados x esa compannia


    #@jobs = @company.Job.all.where(:company_id => current_user.company_id)
   # @jobs_aplications = Job.select("*").joins(:Aplicationjob)


        #Company.Job.Aplicationjob.all
        #Job.all.where(:employee_id => current_user.employee.id).order("id DESC")
        #Aplicationjob.all.where(:employee_id => current_user.employee.id).order("id DESC")
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
