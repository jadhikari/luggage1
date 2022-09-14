json.extract! check_in, :id, :luggage_num, :name, :room_num, :people_num, :received_date_time, :received_by, :checkout_date_time, :checkout_by, :remarks, :created_at, :updated_at
json.url check_in_url(check_in, format: :json)
