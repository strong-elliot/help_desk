json.extract! profile, :id, :username, :email, :password, :password_confirmation, :created_at, :updated_at
json.url profile_url(profile, format: :json)
