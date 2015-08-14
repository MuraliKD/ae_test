require "rails_helper"

RSpec.describe GtmStrategiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/gtm_strategies").to route_to("gtm_strategies#index")
    end

    it "routes to #new" do
      expect(:get => "/gtm_strategies/new").to route_to("gtm_strategies#new")
    end

    it "routes to #show" do
      expect(:get => "/gtm_strategies/1").to route_to("gtm_strategies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/gtm_strategies/1/edit").to route_to("gtm_strategies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/gtm_strategies").to route_to("gtm_strategies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/gtm_strategies/1").to route_to("gtm_strategies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/gtm_strategies/1").to route_to("gtm_strategies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/gtm_strategies/1").to route_to("gtm_strategies#destroy", :id => "1")
    end

  end
end
