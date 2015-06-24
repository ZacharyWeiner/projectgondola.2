require 'rails_helper'

RSpec.describe "WorkOrderStatuses", type: :request do
  describe "GET /work_order_statuses" do
    it "works! (now write some real specs)" do
      get work_order_statuses_path
      expect(response).to have_http_status(200)
    end
  end
end
