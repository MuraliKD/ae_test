require 'rails_helper'

RSpec.describe "market_segmentations/new", type: :view do
  before(:each) do
    assign(:market_segmentation, MarketSegmentation.new(
      :gtm_strategy => nil
    ))
  end

  it "renders new market_segmentation form" do
    render

    assert_select "form[action=?][method=?]", market_segmentations_path, "post" do

      assert_select "input#market_segmentation_gtm_strategy_id[name=?]", "market_segmentation[gtm_strategy_id]"
    end
  end
end
