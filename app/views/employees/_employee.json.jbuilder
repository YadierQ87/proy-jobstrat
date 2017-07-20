json.extract! employee, :id, :fullname, :picture, :description, :contact, :email, :sex, :birth, :curriculum, :username, :password, :country, :created_at, :updated_at
json.url employee_url(employee, format: :json)
