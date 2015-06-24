require "rails_helper"

RSpec.describe WorkOrderStatusesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/work_order_statuses").to route_to("work_order_statuses#index")
    end

    it "routes to #new" do
      expect(:get => "/work_order_statuses/new").to route_to("work_order_statuses#new")
    end

    it "routes to #show" do
      expect(:get => "/work_order_statuses/1").to route_to("work_order_statuses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/work_order_statuses/1/edit").to route_to("work_order_statuses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/work_order_statuses").to route_to("work_order_statuses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/work_order_statuses/1").to route_to("work_order_statuses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/work_order_statuses/1").to route_to("work_order_statuses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/work_order_statuses/1").to route_to("work_order_statuses#destroy", :id => "1")
    end

  end
end
