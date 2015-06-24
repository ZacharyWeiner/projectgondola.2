require "rails_helper"

RSpec.describe VehicleInfosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/vehicle_infos").to route_to("vehicle_infos#index")
    end

    it "routes to #new" do
      expect(:get => "/vehicle_infos/new").to route_to("vehicle_infos#new")
    end

    it "routes to #show" do
      expect(:get => "/vehicle_infos/1").to route_to("vehicle_infos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/vehicle_infos/1/edit").to route_to("vehicle_infos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/vehicle_infos").to route_to("vehicle_infos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/vehicle_infos/1").to route_to("vehicle_infos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/vehicle_infos/1").to route_to("vehicle_infos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vehicle_infos/1").to route_to("vehicle_infos#destroy", :id => "1")
    end

  end
end
