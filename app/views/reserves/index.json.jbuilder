json.array!(@reserves) do |reserf|
  json.extract! reserf, :id, :customer_id, :store_id, :start_datetime, :end_datetime, :memo
  json.url reserf_url(reserf, format: :json)
end
