class Job < ApplicationRecord
  belongs_to :company ,optional: true ,required: false
  belongs_to :category ,optional: true ,required: false
  #accepts_nested_attributes_for :category, allow_destroy: true
  default_scope -> { order(created_at: :desc) }

  #para descargar formato csv
  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |job|
        csv << job.attributes.values_at(*column_names)
      end
    end
  end

  #gema filterrific para paginado y filtrado
  filterrific(
      default_filter_params: { sorted_by: 'created_at_desc' },
      available_filters: [
          :sorted_by,
          :search_query,
          :with_country_id,
          :with_created_at_gte
      ]
  )


end
