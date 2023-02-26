json.extract! concert, :id, :band, :location, :created_at, :updated_at
json.url concert_url(concert, format: :json)
