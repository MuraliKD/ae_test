require "rails_helper"

RSpec.describe BusinessStrategiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/business_strategies").to route_to("business_strategies#index")
    end

    it "routes to #new" do
      expect(:get => "/business_strategies/new").to route_to("business_strategies#new")
    end

    it "routes to #show" do
      expect(:get => "/business_strategies/1").to route_to("business_strategies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/business_strategies/1/edit").to route_to("business_strategies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/business_strategies").to route_to("business_strategies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/business_strategies/1").to route_to("business_strategies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/business_strategies/1").to route_to("business_strategies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/business_strategies/1").to route_to("business_strategies#destroy", :id => "1")
    end

  end
end
