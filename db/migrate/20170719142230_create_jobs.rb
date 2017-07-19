class CreateJobs < ActiveRecord::Migration[5.0]
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :country
      t.references :company, foreign_key: true
      t.timestamps :publish_date
      t.boolean :active
      t.text :description
      t.string :picture

      t.timestamps
    end
  end
end
