class CreateMessageemployees < ActiveRecord::Migration[5.0]
  def change
    create_table :messageemployees do |t|
      t.references :employee, foreign_key: true
      t.references :company, foreign_key: true
      t.text :mail

      t.timestamps
    end
  end
end
