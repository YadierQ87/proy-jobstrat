class CreateExperienceemployees < ActiveRecord::Migration[5.0]
  def change
    create_table :experienceemployees do |t|
      t.references :employee, foreign_key: true
      t.text :nombre_experiencia
      t.string :lugar_trabajo
      t.string :cargo_trabajo
      t.datetime :tiempo

      t.timestamps
    end
  end
end
