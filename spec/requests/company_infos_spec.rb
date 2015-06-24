require 'rails_helper'

RSpec.describe "CompanyInfos", type: :request do
  describe "GET /company_infos" do
    it "works! (now write some real specs)" do
      get company_infos_path
      expect(response).to have_http_status(200)
    end
  end
end
