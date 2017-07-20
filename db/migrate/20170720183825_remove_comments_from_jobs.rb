class RemoveCommentsFromJobs < ActiveRecord::Migration[5.0]
  def change
    remove_column :jobs, :state, :string
    remove_column :jobs, :publish_date, :timestamps
  end
end
