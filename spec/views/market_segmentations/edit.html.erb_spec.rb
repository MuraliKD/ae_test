require 'rails_helper'

RSpec.describe "market_segmentations/edit", type: :view do
  before(:each) do
    @market_segmentation = assign(:market_segmentation, MarketSegmentation.create!(
      :gtm_strategy => nil
    ))
  end

  it "renders the edit market_segmentation form" do
    render

    assert_select "form[action=?][method=?]", market_segmentation_path(@market_segmentation), "post" do

      assert_select "input#market_segmentation_gtm_strategy_id[name=?]", "market_segmentation[gtm_strategy_id]"
    end
  end
end
