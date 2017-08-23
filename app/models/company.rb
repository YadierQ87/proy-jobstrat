class Company < ApplicationRecord
  belongs_to :m_country ,optional: true ,required: false
  has_attached_file :image,  default_url: ""
  validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
  validates_attachment_presence :image

  #para descargar formato csv
  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |company|
        csv << company.attributes.values_at(*column_names)
      end
    end
  end


  #self.page = 5
  #gema filterrific para paginado y filtrado
  filterrific(
      default_filter_params: { sorted_by: 'company' },
      available_filters: [
          :sorted_by,
          :search_query,
          :with_country_id,
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
    num_or_conditions = 3
    where(
        terms.map {
          or_clauses = [
              "LOWER(companies.company) LIKE ?",
              "LOWER(companies.country) LIKE ?",
              "LOWER(companies.email) LIKE ?"
          ].join(' OR ')
          "(#{ or_clauses })"
        }.join(' AND '),
        *terms.map { |e| [e] * num_or_conditions }.flatten
    )
  }

  scope :sorted_by, lambda { |sort_option|
    direction = (sort_option =~ /desc$/) ? 'desc' : 'asc'
    case sort_option.to_s
      when /^created_at_/
        order("companies.created_at #{ direction }")
      when /^company/
        order("LOWER(companies.company) #{ direction }")
      when /^fullname/
        order("LOWER(companies.fullname) #{ direction }")
      when /^country/
        order("LOWER(companies.country) #{ direction }")
      when /^description/
        order("LOWER(companies.description) #{ direction }")
      when /^contact/
        order("LOWER(companies.contact) #{ direction }")
      when /^email/
        order("LOWER(companies.email) #{ direction }")
      when /^username/
        order("LOWER(companies.username) #{ direction }")
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


  def self.options_for_sorted_by
    [
        ['Name (a-z)', 'name_asc'],
        ['email date (newest first)', 'email'],
        ['username (oldest first)', 'username'],
        ['Country (a-z)', 'country_name_asc']
    ]
  end

  def decorated_created_at
    created_at.to_date.to_s(:long)
  end

end
