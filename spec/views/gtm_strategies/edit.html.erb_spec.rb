require 'rails_helper'

RSpec.describe "gtm_strategies/edit", type: :view do
  before(:each) do
    @gtm_strategy = assign(:gtm_strategy, GtmStrategy.create!(
      :user => nil
    ))
  end

  it "renders the edit gtm_strategy form" do
    render

    assert_select "form[action=?][method=?]", gtm_strategy_path(@gtm_strategy), "post" do

      assert_select "input#gtm_strategy_user_id[name=?]", "gtm_strategy[user_id]"
    end
  end
end
