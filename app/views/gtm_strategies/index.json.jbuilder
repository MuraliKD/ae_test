json.array!(@gtm_strategies) do |gtm_strategy|
  json.extract! gtm_strategy, :id, :user_id
  json.url gtm_strategy_url(gtm_strategy, format: :json)
end
