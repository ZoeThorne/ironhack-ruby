json.extract! concert, :id, :artist, :venue, :city, :date, :price, :description, :created_at, :updated_at
json.url concert_url(concert, format: :json)