module CompaniesHelper

  def paises_for_select
    MCountry.pluck(:ncountry, :ncountry)
  end


end
