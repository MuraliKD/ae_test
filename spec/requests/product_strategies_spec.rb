require 'rails_helper'

RSpec.describe "ProductStrategies", type: :request do
  describe "GET /product_strategies" do
    it "works! (now write some real specs)" do
      get product_strategies_path
      expect(response).to have_http_status(200)
    end
  end
end
