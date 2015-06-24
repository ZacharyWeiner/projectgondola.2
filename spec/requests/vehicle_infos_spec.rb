require 'rails_helper'

RSpec.describe "VehicleInfos", type: :request do
  describe "GET /vehicle_infos" do
    it "works! (now write some real specs)" do
      get vehicle_infos_path
      expect(response).to have_http_status(200)
    end
  end
end
