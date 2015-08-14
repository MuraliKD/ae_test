require 'rails_helper'

RSpec.describe "product_strategies/edit", type: :view do
  before(:each) do
    @product_strategy = assign(:product_strategy, ProductStrategy.create!(
      :feature_list => "MyText",
      :product_principles => "MyText",
      :user => nil
    ))
  end

  it "renders the edit product_strategy form" do
    render

    assert_select "form[action=?][method=?]", product_strategy_path(@product_strategy), "post" do

      assert_select "textarea#product_strategy_feature_list[name=?]", "product_strategy[feature_list]"

      assert_select "textarea#product_strategy_product_principles[name=?]", "product_strategy[product_principles]"

      assert_select "input#product_strategy_user_id[name=?]", "product_strategy[user_id]"
    end
  end
end
