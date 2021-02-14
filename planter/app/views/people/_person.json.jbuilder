json.extract! person, :id, :email, :name, :created_at, :updated_at
json.url person_url(person, format: :json)
