json.extract! user, :id, :first_name, :last_name, :photo_url, :voice_url, :address_line1, :address_line2, :city, :state, :zip, :created_at, :updated_at
json.url user_url(user, format: :json)
