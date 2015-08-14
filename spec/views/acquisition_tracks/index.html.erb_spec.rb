require 'rails_helper'

RSpec.describe "acquisition_tracks/index", type: :view do
  before(:each) do
    assign(:acquisition_tracks, [
      AcquisitionTrack.create!(
        :user => "User",
        :customer => "Customer",
        :market_segmentation => nil,
        :user_activity => "User Activity",
        :customer_activity => "Customer Activity",
        :plan_title => "Plan Title"
      ),
      AcquisitionTrack.create!(
        :user => "User",
        :customer => "Customer",
        :market_segmentation => nil,
        :user_activity => "User Activity",
        :customer_activity => "Customer Activity",
        :plan_title => "Plan Title"
      )
    ])
  end

  it "renders a list of acquisition_tracks" do
    render
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => "Customer".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
    assert_select "tr>td", :text => "User Activity".to_s, :count => 2
    assert_select "tr>td", :text => "Customer Activity".to_s, :count => 2
    assert_select "tr>td", :text => "Plan Title".to_s, :count => 2
  end
end
