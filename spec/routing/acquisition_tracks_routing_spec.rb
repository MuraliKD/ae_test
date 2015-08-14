require "rails_helper"

RSpec.describe AcquisitionTracksController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/acquisition_tracks").to route_to("acquisition_tracks#index")
    end

    it "routes to #new" do
      expect(:get => "/acquisition_tracks/new").to route_to("acquisition_tracks#new")
    end

    it "routes to #show" do
      expect(:get => "/acquisition_tracks/1").to route_to("acquisition_tracks#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/acquisition_tracks/1/edit").to route_to("acquisition_tracks#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/acquisition_tracks").to route_to("acquisition_tracks#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/acquisition_tracks/1").to route_to("acquisition_tracks#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/acquisition_tracks/1").to route_to("acquisition_tracks#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/acquisition_tracks/1").to route_to("acquisition_tracks#destroy", :id => "1")
    end

  end
end
