class AddProfesionToEmployees < ActiveRecord::Migration[5.0]
  def change
    add_column :employees, :profesion, :string
  end
end
