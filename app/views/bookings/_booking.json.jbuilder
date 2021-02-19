json.extract! booking, :id, :booking_type, :start_time, :end_time, :user_id, :created_at, :updated_at
json.url booking_url(booking, format: :json)
