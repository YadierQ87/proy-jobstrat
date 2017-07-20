class AddDetailsToJobs < ActiveRecord::Migration[5.0]
  def change
    add_column :jobs, :job_stat, :string
  end
end
