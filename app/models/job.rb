class Job < ApplicationRecord

  belongs_to :company ,optional: true ,required: false
  belongs_to :m_country ,optional: true ,required: false
  belongs_to :category ,optional: true ,required: false
  has_attached_file :image,  default_url: ""
  validates :title, :presence => true, :length => {:in => 8..50}
  validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
  #validates_attachment_presence :image
  #title, :category_id, :m_country_id, :company_id, :money, :valido_hasta, :tipo_work, :description, :requisitos, :beneficios
  #VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  #validates :email, presence: true, :uniqueness => true, format: { with: VALID_EMAIL_REGEX }
  #validates :password, :confirmation => true
  #validates_length_of :password, :in => 6..20, :on => :create




  #para descargar formato csv
  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |job|
        csv << job.attributes.values_at(*column_names)
      end
    end
  end

  #self.page = 5
  #gema filterrific para paginado y filtrado
  filterrific(
      default_filter_params: { sorted_by: 'created_at_desc' },
      available_filters: [
          :sorted_by,
          :search_query,
          :with_country_id,
          :with_company_id,
          :with_category_id,
          :with_created_at_gte
      ]
  )

  scope :search_query, lambda { |query|
    return nil  if query.blank?
    # condition query, parse into individual keywords
    terms = query.downcase.split(/\s+/)
    # replace "*" with "%" for wildcard searches,
    # append '%', remove duplicate '%'s
    terms = terms.map { |e|
      (e.gsub('*', '%') + '%').gsub(/%+/, '%')
    }
    # configure number of OR conditions for provision
    # of interpolation arguments. Adjust this if you
    # change the number of OR conditions.
    num_or_conditions = 1
    where(
        terms.map {
          or_clauses = [
              "LOWER(jobs.title) LIKE ?",
          ].join(' OR ')
          "(#{ or_clauses })"
        }.join(' AND '),
        *terms.map { |e| [e] * num_or_conditions }.flatten
    )
  }

  scope :sorted_by, lambda { |sort_option|
    # extract the sort direction from the param value.
    direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'
    case sort_option.to_s
      when /^created_at_/
        order("jobs.created_at #{ direction }")
      when /^name_/
        order("LOWER(jobs.title) #{ direction }, LOWER(jobs.title) #{ direction }")
      else
        raise(ArgumentError, "Invalid sort option: #{ sort_option.inspect }")
    end
  }

  scope :with_category_id, lambda { |category_ids|
    where(:category_id => [*category_ids])
  }

  scope :with_company_id, lambda { |company_ids|
    where(:company_id => [*company_ids])
  }

  scope :with_country_id, lambda { |country_ids|
    # Filters students with any of the given country_ids
    where(:m_country_id => [*country_ids])
  }


  scope :with_created_at_gte, lambda { |ref_date|
    where('jobs.created_at >= ?', ref_date)
  }

  delegate :name, :to => :country, :prefix => true

  def self.options_for_sorted_by
    [
        ['Name (a-z)', 'name_asc'],
        ['Registration date (newest first)', 'created_at_desc'],
        ['Registration date (oldest first)', 'created_at_asc'],
        ['Country (a-z)', 'country_name_asc']
    ]
  end

  def decorated_created_at
    created_at.to_date.to_s(:long)
  end


end
