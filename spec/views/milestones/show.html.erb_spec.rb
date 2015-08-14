require 'rails_helper'

RSpec.describe "milestones/show", type: :view do
  before(:each) do
    @milestone = assign(:milestone, Milestone.create!(
      :summary => "Summary",
      :description => "MyText",
      :title => "Title",
      :gtm_strategy => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Summary/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(//)
  end
end
