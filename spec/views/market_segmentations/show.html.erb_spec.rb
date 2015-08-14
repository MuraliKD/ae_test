require 'rails_helper'

RSpec.describe "market_segmentations/show", type: :view do
  before(:each) do
    @market_segmentation = assign(:market_segmentation, MarketSegmentation.create!(
      :gtm_strategy => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
