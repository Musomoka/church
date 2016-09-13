json.extract! upcoming, :id, :title, :description, :start, :end, :created_at, :updated_at
json.url upcoming_url(upcoming, format: :json)