require 'rails_helper'

RSpec.describe "business_strategies/edit", type: :view do
  before(:each) do
    @business_strategy = assign(:business_strategy, BusinessStrategy.create!(
      :vision => "MyText",
      :principles => "MyText",
      :business_model => "MyString",
      :form_factor => "MyString",
      :pricing => "MyString",
      :sales => "MyString",
      :user => nil
    ))
  end

  it "renders the edit business_strategy form" do
    render

    assert_select "form[action=?][method=?]", business_strategy_path(@business_strategy), "post" do

      assert_select "textarea#business_strategy_vision[name=?]", "business_strategy[vision]"

      assert_select "textarea#business_strategy_principles[name=?]", "business_strategy[principles]"

      assert_select "input#business_strategy_business_model[name=?]", "business_strategy[business_model]"

      assert_select "input#business_strategy_form_factor[name=?]", "business_strategy[form_factor]"

      assert_select "input#business_strategy_pricing[name=?]", "business_strategy[pricing]"

      assert_select "input#business_strategy_sales[name=?]", "business_strategy[sales]"

      assert_select "input#business_strategy_user_id[name=?]", "business_strategy[user_id]"
    end
  end
end
