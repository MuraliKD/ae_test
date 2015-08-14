json.array!(@business_strategies) do |business_strategy|
  json.extract! business_strategy, :id, :vision, :principles, :business_model, :form_factor, :pricing, :sales, :user_id
  json.url business_strategy_url(business_strategy, format: :json)
end
