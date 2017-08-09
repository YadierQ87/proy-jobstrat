module MCountriesHelper

  def paises_for_select
    MCountry.pluck(:ncountry, :ncountry)
  end

  def paises_id_for_select
    MCountry.pluck(:ncountry, :id)
  end

end
