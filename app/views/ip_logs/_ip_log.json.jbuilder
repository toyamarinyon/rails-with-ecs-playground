json.extract! ip_log, :id, :ip_address, :created_at, :updated_at
json.url ip_log_url(ip_log, format: :json)
