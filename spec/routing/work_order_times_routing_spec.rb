require "rails_helper"

RSpec.describe WorkOrderTimesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/work_order_times").to route_to("work_order_times#index")
    end

    it "routes to #new" do
      expect(:get => "/work_order_times/new").to route_to("work_order_times#new")
    end

    it "routes to #show" do
      expect(:get => "/work_order_times/1").to route_to("work_order_times#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/work_order_times/1/edit").to route_to("work_order_times#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/work_order_times").to route_to("work_order_times#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/work_order_times/1").to route_to("work_order_times#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/work_order_times/1").to route_to("work_order_times#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/work_order_times/1").to route_to("work_order_times#destroy", :id => "1")
    end

  end
end
