class AddCountryToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_reference :employees, :m_country, foreign_key: true
  end
end
