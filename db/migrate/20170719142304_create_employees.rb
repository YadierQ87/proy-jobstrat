class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :fullname
      t.string :picture
      t.text :description
      t.string :contact
      t.string :email
      t.string :sex
      t.timestamps :birth
      t.text :curriculum

      t.timestamps
    end
  end
end
