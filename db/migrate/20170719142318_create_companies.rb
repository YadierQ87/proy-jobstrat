class CreateCompanies < ActiveRecord::Migration[5.0]
  def change
    create_table :companies do |t|
      t.string :company
      t.string :fullname
      t.string :picture
      t.text :description
      t.string :country
      t.string :contact
      t.string :email

      t.timestamps
    end
  end
end