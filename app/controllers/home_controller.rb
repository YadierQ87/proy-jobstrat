class HomeController < ApplicationController
  def index
    @jobs = Job.all.limit(6)
    @companies = Company.all.limit(6)
    @employees = Employee.all.limit(6)
    @categories = Category.all.order("category")
    @articles = Article.all.limit(6)
  end
end
