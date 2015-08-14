json.array!(@market_segmentations) do |market_segmentation|
  json.extract! market_segmentation, :id, :gtm_strategy_id
  json.url market_segmentation_url(market_segmentation, format: :json)
end
