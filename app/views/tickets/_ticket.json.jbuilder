json.extract! ticket, :id, :batchnumber, :manufacturedate, :expirydate, :purchasepoint, :description, :resolution, :customer_id, :caller_type_id, :ticket_type_id, :ticket_sub_type_id, :product_id, :product_sku_id, :ticket_status_id, :ticket_sub_status_id, :ticket_attachment_id, :employee_id, :source_id, :tag_user_id, :created_at, :updated_at
json.url ticket_url(ticket, format: :json)
