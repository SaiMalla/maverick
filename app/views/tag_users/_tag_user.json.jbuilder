json.extract! tag_user, :id, :ticket_id, :employee_id, :created_at, :updated_at
json.url tag_user_url(tag_user, format: :json)
