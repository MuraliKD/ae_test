json.array!(@acquisition_tracks) do |acquisition_track|
  json.extract! acquisition_track, :id, :user, :customer, :market_segmentation_id, :user_activity, :customer_activity, :plan_title, :date_scheduled
  json.url acquisition_track_url(acquisition_track, format: :json)
end
