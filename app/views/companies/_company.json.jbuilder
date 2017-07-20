json.extract! company, :id, :company, :fullname, :picture, :description, :country, :contact, :email, :username, :password, :created_at, :updated_at
json.url company_url(company, format: :json)
