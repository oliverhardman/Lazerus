json.extract! line_item, :id, :computer_id, :cart, :created_at, :updated_at
json.url line_item_url(line_item, format: :json)
