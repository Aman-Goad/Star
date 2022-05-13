json.extract! create_user, :id, :username, :string, :email, :string, :created_at, :updated_at
json.url create_user_url(create_user, format: :json)
