class Country < ApplicationRecord

  #para descargar formato csv
  def self.to_csv
    CSV.generate do |csv|
      csv << column_names
      all.each do |aplicationjob|
        csv << aplicationjob.attributes.values_at(*column_names)
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
              "LOWER(jobs.title) LIKE ?",
              "LOWER(jobs.country) LIKE ?",
              "LOWER(jobs.job_stat) LIKE ?"
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

  def full_name
    [last_name, first_name].compact.join(', ')
  end

  def decorated_created_at
    created_at.to_date.to_s(:long)
  end


end
