require 'rails_helper'

RSpec.describe "AcquisitionTracks", type: :request do
  describe "GET /acquisition_tracks" do
    it "works! (now write some real specs)" do
      get acquisition_tracks_path
      expect(response).to have_http_status(200)
    end
  end
end
