require "rails_helper"

RSpec.describe ProductStrategiesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/product_strategies").to route_to("product_strategies#index")
    end

    it "routes to #new" do
      expect(:get => "/product_strategies/new").to route_to("product_strategies#new")
    end

    it "routes to #show" do
      expect(:get => "/product_strategies/1").to route_to("product_strategies#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/product_strategies/1/edit").to route_to("product_strategies#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/product_strategies").to route_to("product_strategies#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/product_strategies/1").to route_to("product_strategies#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/product_strategies/1").to route_to("product_strategies#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/product_strategies/1").to route_to("product_strategies#destroy", :id => "1")
    end

  end
end
