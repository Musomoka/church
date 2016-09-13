json.extract! sermon, :id, :title, :scriptures, :body, :created_at, :updated_at
json.url sermon_url(sermon, format: :json)