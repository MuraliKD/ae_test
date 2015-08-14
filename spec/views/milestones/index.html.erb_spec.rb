require 'rails_helper'

RSpec.describe "milestones/index", type: :view do
  before(:each) do
    assign(:milestones, [
      Milestone.create!(
        :summary => "Summary",
        :description => "MyText",
        :title => "Title",
        :gtm_strategy => nil
      ),
      Milestone.create!(
        :summary => "Summary",
        :description => "MyText",
        :title => "Title",
        :gtm_strategy => nil
      )
    ])
  end

  it "renders a list of milestones" do
    render
    assert_select "tr>td", :text => "Summary".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
