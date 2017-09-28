class RemoveCampsFromCompanies < ActiveRecord::Migration[5.0]
  def change
    remove_column :companies, :country, :string
    remove_column :companies, :picture, :string
  end
end
