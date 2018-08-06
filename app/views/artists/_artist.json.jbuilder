json.extract! artist, :id, :name, :bio, :hometown, :created_at, :updated_at
json.url artist_url(artist, format: :json)
