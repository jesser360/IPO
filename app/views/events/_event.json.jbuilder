json.extract! event, :id, :title, :start, :end, :allday, :created_at, :updated_at
json.url event_url(event, format: :json)
