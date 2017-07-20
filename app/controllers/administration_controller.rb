class AdministrationController < ApplicationController
  def index
  end

  def jobs
    @jobs = Job.all
  end

  def employees
  end

  def companies
  end

  def categories
  end
end
