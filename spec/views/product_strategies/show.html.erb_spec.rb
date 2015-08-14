require 'rails_helper'

RSpec.describe "product_strategies/show", type: :view do
  before(:each) do
    @product_strategy = assign(:product_strategy, ProductStrategy.create!(
      :feature_list => "MyText",
      :product_principles => "MyText",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(//)
  end
end
