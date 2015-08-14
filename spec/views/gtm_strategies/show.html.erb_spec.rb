require 'rails_helper'

RSpec.describe "gtm_strategies/show", type: :view do
  before(:each) do
    @gtm_strategy = assign(:gtm_strategy, GtmStrategy.create!(
      :user => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
  end
end
