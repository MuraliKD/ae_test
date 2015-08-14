require 'rails_helper'

RSpec.describe "product_strategies/index", type: :view do
  before(:each) do
    assign(:product_strategies, [
      ProductStrategy.create!(
        :feature_list => "MyText",
        :product_principles => "MyText",
        :user => nil
      ),
      ProductStrategy.create!(
        :feature_list => "MyText",
        :product_principles => "MyText",
        :user => nil
      )
    ])
  end

  it "renders a list of product_strategies" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
