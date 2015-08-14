require "rails_helper"

RSpec.describe MarketSegmentationsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/market_segmentations").to route_to("market_segmentations#index")
    end

    it "routes to #new" do
      expect(:get => "/market_segmentations/new").to route_to("market_segmentations#new")
    end

    it "routes to #show" do
      expect(:get => "/market_segmentations/1").to route_to("market_segmentations#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/market_segmentations/1/edit").to route_to("market_segmentations#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/market_segmentations").to route_to("market_segmentations#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/market_segmentations/1").to route_to("market_segmentations#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/market_segmentations/1").to route_to("market_segmentations#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/market_segmentations/1").to route_to("market_segmentations#destroy", :id => "1")
    end

  end
end
