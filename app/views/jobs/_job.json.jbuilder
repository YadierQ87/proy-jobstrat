json.extract! job, :id, :title, :country, :company_id, :publish_date, :active, :description, :picture, :created_at, :updated_at
json.url job_url(job, format: :json)
