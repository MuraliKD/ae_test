require 'rails_helper'

RSpec.describe "gtm_strategies/index", type: :view do
  before(:each) do
    assign(:gtm_strategies, [
      GtmStrategy.create!(
        :user => nil
      ),
      GtmStrategy.create!(
        :user => nil
      )
    ])
  end

  it "renders a list of gtm_strategies" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
