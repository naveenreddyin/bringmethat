json.array!(@broadcasts) do |broadcast|
  json.extract! broadcast, :id, :title, :description, :country_travelling_to, :city_travelling_to, :amount, :currency_id, :weight, :travel_date, :reaching_date, :reaching_time
  json.url broadcast_url(broadcast, format: :json)
end
