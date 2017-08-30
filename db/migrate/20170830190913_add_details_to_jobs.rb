class AddDetailsToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :tipo_work, :string
    add_column :jobs, :requirementos, :text
    add_column :jobs, :money, :float
    add_column :jobs, :valido_hasta, :datetime
  end
end
