json.array!(@currencies) do |currency|
  json.extract! currency, :id, :currency_code
  json.url currency_url(currency, format: :json)
end
