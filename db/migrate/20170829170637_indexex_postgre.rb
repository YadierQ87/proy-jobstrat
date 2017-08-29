class IndexexPostgre < ActiveRecord::Migration[5.0]
  def change
    add_reference :jobs, :companies, foreign_key: true
    add_reference :companies, :m_country, foreign_key: true
  end
end
