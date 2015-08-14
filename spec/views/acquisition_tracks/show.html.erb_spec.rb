require 'rails_helper'

RSpec.describe "acquisition_tracks/show", type: :view do
  before(:each) do
    @acquisition_track = assign(:acquisition_track, AcquisitionTrack.create!(
      :user => "User",
      :customer => "Customer",
      :market_segmentation => nil,
      :user_activity => "User Activity",
      :customer_activity => "Customer Activity",
      :plan_title => "Plan Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/User/)
    expect(rendered).to match(/Customer/)
    expect(rendered).to match(//)
    expect(rendered).to match(/User Activity/)
    expect(rendered).to match(/Customer Activity/)
    expect(rendered).to match(/Plan Title/)
  end
end
