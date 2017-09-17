class AddWorkToMessageemployees < ActiveRecord::Migration[5.0]
  def change
    add_reference :messageemployees, :job, foreign_key: true
  end
end
