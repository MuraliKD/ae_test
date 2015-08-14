json.array!(@product_strategies) do |product_strategy|
  json.extract! product_strategy, :id, :feature_list, :product_principles, :user_id
  json.url product_strategy_url(product_strategy, format: :json)
end
