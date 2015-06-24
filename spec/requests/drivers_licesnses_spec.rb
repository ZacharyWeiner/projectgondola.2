require 'rails_helper'

RSpec.describe "DriversLicesnses", type: :request do
  describe "GET /drivers_licesnses" do
    it "works! (now write some real specs)" do
      get drivers_licesnses_path
      expect(response).to have_http_status(200)
    end
  end
end
