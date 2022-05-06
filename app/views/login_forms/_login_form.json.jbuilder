json.extract! login_form, :id, :User_Name, :Password, :Class, :created_at, :updated_at
json.url login_form_url(login_form, format: :json)
