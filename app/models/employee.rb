class Employee < ApplicationRecord
  has_many :aplicationjob
  has_many :messageemployee
  has_attached_file :image,  default_url: ""
  validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
  #validates_attachment_presence :image

  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |employee|
        csv << employee.attributes.values_at(*column_names)
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
              "LOWER(employees.fullname) LIKE ?",
              "LOWER(employees.contact) LIKE ?",
              "LOWER(employees.email) LIKE ?",
              "LOWER(employees.username) LIKE ?",
              "LOWER(employees.country) LIKE ?",
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
        order("employees.created_at #{ direction }")
      when /^name_/
        order("LOWER(employees.fullname) #{ direction }, LOWER(employees.contact) #{ direction }, LOWER(employees.email) #{ direction }, LOWER(employees.username) #{ direction }, LOWER(employees.country) #{ direction }")
      else
        raise(ArgumentError, "Invalid sort option: #{ sort_option.inspect }")
    end
  }
  scope :with_created_at_gte, lambda { |ref_date|
    where('employee.created_at >= ?', ref_date)
  }

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
