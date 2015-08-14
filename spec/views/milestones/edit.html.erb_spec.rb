require 'rails_helper'

RSpec.describe "milestones/edit", type: :view do
  before(:each) do
    @milestone = assign(:milestone, Milestone.create!(
      :summary => "MyString",
      :description => "MyText",
      :title => "MyString",
      :gtm_strategy => nil
    ))
  end

  it "renders the edit milestone form" do
    render

    assert_select "form[action=?][method=?]", milestone_path(@milestone), "post" do

      assert_select "input#milestone_summary[name=?]", "milestone[summary]"

      assert_select "textarea#milestone_description[name=?]", "milestone[description]"

      assert_select "input#milestone_title[name=?]", "milestone[title]"

      assert_select "input#milestone_gtm_strategy_id[name=?]", "milestone[gtm_strategy_id]"
    end
  end
end
