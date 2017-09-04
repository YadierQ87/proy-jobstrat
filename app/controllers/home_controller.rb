class HomeController < ApplicationController
  def index
    @jobs = Job.all.limit(5)
    @companies = Company.all.limit(5)
    @employees = Employee.all.limit(6)
    @categories = Category.all.order("category")
    @articles = Article.all.limit(6)
  end
end
