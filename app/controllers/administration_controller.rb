class AdministrationController < ApplicationController
  def index
    @title = 'Administration'
  end

  def jobs
    @title = 'CRUD Jobs'
    @jobs = Job.all
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
