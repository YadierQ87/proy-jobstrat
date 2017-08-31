class AddOthersToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :requisitos, :text
    add_column :jobs, :beneficios, :text
  end
end
