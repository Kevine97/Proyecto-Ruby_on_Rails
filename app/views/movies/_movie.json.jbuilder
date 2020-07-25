json.extract! movie, :id, :name, :duration, :date_time_movie, :created_at, :updated_at
json.url movie_url(movie, format: :json)
