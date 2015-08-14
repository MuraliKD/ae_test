require 'rails_helper'

RSpec.describe "business_strategies/show", type: :view do
  before(:each) do
    @business_strategy = assign(:business_strategy, BusinessStrategy.create!(
      :vision => "MyText",
      :principles => "MyText",
      :business_model => "Business Model",
      :form_factor => "Form Factor",
      :pricing => "Pricing",
      :sales => "Sales",
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Business Model/)
    expect(rendered).to match(/Form Factor/)
    expect(rendered).to match(/Pricing/)
    expect(rendered).to match(/Sales/)
    expect(rendered).to match(//)
  end
end
