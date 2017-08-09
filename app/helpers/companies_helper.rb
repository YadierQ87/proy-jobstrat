module CompaniesHelper

  def companies_for_select
    Company.pluck(:company, :id)
  end


end
