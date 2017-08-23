class AddCountryToJobs < ActiveRecord::Migration[5.0]
  def change
    add_reference :jobs, :m_country, foreign_key: true
  end
end
