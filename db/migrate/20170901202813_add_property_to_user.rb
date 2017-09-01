class AddPropertyToUser < ActiveRecord::Migration[5.0]
  def change
    add_reference :users, :company, foreign_key: true
    add_reference :users, :employee, foreign_key: true
  end
end
