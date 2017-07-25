class Category < ApplicationRecord

  #attr_accessor :category
  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |category|
        csv << category.attributes.values_at(*column_names)
      end
    end
  end

end
