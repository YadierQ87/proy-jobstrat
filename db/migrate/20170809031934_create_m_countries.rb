class CreateMCountries < ActiveRecord::Migration[5.0]
  def change
    create_table :m_countries do |t|
      t.string :ncountry

      t.timestamps
    end
  end
end
