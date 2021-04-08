json.extract! user, :id, :first_name, :last_name, :address_line1, :address_line2, :city, :state, :zip, :photo_url, :voice_url, :created_at, :updated_at
json.url user_url(user, format: :json)
