require 'rails_helper'

RSpec.describe "market_segmentations/index", type: :view do
  before(:each) do
    assign(:market_segmentations, [
      MarketSegmentation.create!(
        :gtm_strategy => nil
      ),
      MarketSegmentation.create!(
        :gtm_strategy => nil
      )
    ])
  end

  it "renders a list of market_segmentations" do
    render
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
