class MCountry < ApplicationRecord
  def self.options_for_select
    order('LOWER(ncountry)').map { |e| [e.ncountry, e.id] }
  end
end
