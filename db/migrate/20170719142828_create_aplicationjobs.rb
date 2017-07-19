class CreateAplicationjobs < ActiveRecord::Migration[5.0]
  def change
    create_table :aplicationjobs do |t|
      t.references :job, foreign_key: true
      t.references :employee, foreign_key: true
      t.text :description

      t.timestamps
    end
  end
end
