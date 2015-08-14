require 'rails_helper'

RSpec.describe "BusinessStrategies", type: :request do
  describe "GET /business_strategies" do
    it "works! (now write some real specs)" do
      get business_strategies_path
      expect(response).to have_http_status(200)
    end
  end
end
