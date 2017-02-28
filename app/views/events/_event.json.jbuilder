json.extract! event, :id, :name, :event_date, :event_time, :place, :area, :address, :phone, :description, :created_at, :updated_at
json.url event_url(event, format: :json)