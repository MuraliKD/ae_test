require 'rails_helper'

RSpec.describe "acquisition_tracks/new", type: :view do
  before(:each) do
    assign(:acquisition_track, AcquisitionTrack.new(
      :user => "MyString",
      :customer => "MyString",
      :market_segmentation => nil,
      :user_activity => "MyString",
      :customer_activity => "MyString",
      :plan_title => "MyString"
    ))
  end

  it "renders new acquisition_track form" do
    render

    assert_select "form[action=?][method=?]", acquisition_tracks_path, "post" do

      assert_select "input#acquisition_track_user[name=?]", "acquisition_track[user]"

      assert_select "input#acquisition_track_customer[name=?]", "acquisition_track[customer]"

      assert_select "input#acquisition_track_market_segmentation_id[name=?]", "acquisition_track[market_segmentation_id]"

      assert_select "input#acquisition_track_user_activity[name=?]", "acquisition_track[user_activity]"

      assert_select "input#acquisition_track_customer_activity[name=?]", "acquisition_track[customer_activity]"

      assert_select "input#acquisition_track_plan_title[name=?]", "acquisition_track[plan_title]"
    end
  end
end
