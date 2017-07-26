class Article < ApplicationRecord
  validates :title, presence: true,
            length: { minimum: 5 }

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |article|
        csv << article.attributes.values_at(*column_names)
      end
    end
  end

end
