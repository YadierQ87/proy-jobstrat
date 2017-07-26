class Employee < ApplicationRecord
  has_many :aplicationjob
  has_many :messageemployee

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |employee|
        csv << employee.attributes.values_at(*column_names)
      end
    end
  end

end
