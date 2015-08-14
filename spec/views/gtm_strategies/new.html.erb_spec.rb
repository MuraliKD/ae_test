require 'rails_helper'

RSpec.describe "gtm_strategies/new", type: :view do
  before(:each) do
    assign(:gtm_strategy, GtmStrategy.new(
      :user => nil
    ))
  end

  it "renders new gtm_strategy form" do
    render

    assert_select "form[action=?][method=?]", gtm_strategies_path, "post" do

      assert_select "input#gtm_strategy_user_id[name=?]", "gtm_strategy[user_id]"
    end
  end
end
