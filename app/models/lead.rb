class Lead < ApplicationRecord

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |lead|
        csv << lead.attributes.values_at(*column_names)
      end
    end
  end

end
