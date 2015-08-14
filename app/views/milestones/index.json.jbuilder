json.array!(@milestones) do |milestone|
  json.extract! milestone, :id, :summary, :description, :title, :gtm_strategy_id
  json.url milestone_url(milestone, format: :json)
end
