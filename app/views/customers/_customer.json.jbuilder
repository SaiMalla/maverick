json.extract! customer, :id, :name, :age_id, :gender, :email, :mobilenumber, :address, :pincode, :city, :state, :created_at, :updated_at
json.url customer_url(customer, format: :json)
