require 'rails_helper'

RSpec.describe "product_strategies/new", type: :view do
  before(:each) do
    assign(:product_strategy, ProductStrategy.new(
      :feature_list => "MyText",
      :product_principles => "MyText",
      :user => nil
    ))
  end

  it "renders new product_strategy form" do
    render

    assert_select "form[action=?][method=?]", product_strategies_path, "post" do

      assert_select "textarea#product_strategy_feature_list[name=?]", "product_strategy[feature_list]"

      assert_select "textarea#product_strategy_product_principles[name=?]", "product_strategy[product_principles]"

      assert_select "input#product_strategy_user_id[name=?]", "product_strategy[user_id]"
    end
  end
end
