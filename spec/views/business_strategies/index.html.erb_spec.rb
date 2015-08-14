require 'rails_helper'

RSpec.describe "business_strategies/index", type: :view do
  before(:each) do
    assign(:business_strategies, [
      BusinessStrategy.create!(
        :vision => "MyText",
        :principles => "MyText",
        :business_model => "Business Model",
        :form_factor => "Form Factor",
        :pricing => "Pricing",
        :sales => "Sales",
        :user => nil
      ),
      BusinessStrategy.create!(
        :vision => "MyText",
        :principles => "MyText",
        :business_model => "Business Model",
        :form_factor => "Form Factor",
        :pricing => "Pricing",
        :sales => "Sales",
        :user => nil
      )
    ])
  end

  it "renders a list of business_strategies" do
    render
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => "Business Model".to_s, :count => 2
    assert_select "tr>td", :text => "Form Factor".to_s, :count => 2
    assert_select "tr>td", :text => "Pricing".to_s, :count => 2
    assert_select "tr>td", :text => "Sales".to_s, :count => 2
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
