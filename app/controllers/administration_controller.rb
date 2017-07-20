class AdministrationController < ApplicationController
  def index
  end

  #get 'adminjobs', to: 'home#index'
  def jobs
    @jobs = Job.all
  end

  # GET /adminemployees
  def adminemployees
    @employees = Employee.all
  end

  # GET /admincompanies
  def admincompanies
    @companies = Company.all
  end

  # GET /admincategories
  def admincategories
    @categories = Category.all
  end

end
