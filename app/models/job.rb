class Job < ApplicationRecord
  belongs_to :company
  belongs_to :category
  has_one :category
  accepts_nested_attributes_for :category, allow_destroy: true
  default_scope -> { order(created_at: :desc) }

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |job|
        csv << job.attributes.values_at(*column_names)
      end
    end
  end

end
