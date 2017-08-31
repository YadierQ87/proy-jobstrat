class CreateEducationalemployees < ActiveRecord::Migration[5.0]
  def change
    create_table :educationalemployees do |t|
      t.references :employee, foreign_key: true
      t.string :nombre_escuela
      t.string :grado_logrado
      t.datetime :anno_ini
      t.datetime :anno_fin

      t.timestamps
    end
  end
end
