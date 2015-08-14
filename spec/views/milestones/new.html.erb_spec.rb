require 'rails_helper'

RSpec.describe "milestones/new", type: :view do
  before(:each) do
    assign(:milestone, Milestone.new(
      :summary => "MyString",
      :description => "MyText",
      :title => "MyString",
      :gtm_strategy => nil
    ))
  end

  it "renders new milestone form" do
    render

    assert_select "form[action=?][method=?]", milestones_path, "post" do

      assert_select "input#milestone_summary[name=?]", "milestone[summary]"

      assert_select "textarea#milestone_description[name=?]", "milestone[description]"

      assert_select "input#milestone_title[name=?]", "milestone[title]"

      assert_select "input#milestone_gtm_strategy_id[name=?]", "milestone[gtm_strategy_id]"
    end
  end
end
