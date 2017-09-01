class AddUniqueToApplicationjobs < ActiveRecord::Migration[5.0]
  def change
    add_index :aplicationjobs, [:job_id, :employee_id], unique: true
  end
end
