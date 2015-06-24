require "rails_helper"

RSpec.describe DriversLicesnsesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/drivers_licesnses").to route_to("drivers_licesnses#index")
    end

    it "routes to #new" do
      expect(:get => "/drivers_licesnses/new").to route_to("drivers_licesnses#new")
    end

    it "routes to #show" do
      expect(:get => "/drivers_licesnses/1").to route_to("drivers_licesnses#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/drivers_licesnses/1/edit").to route_to("drivers_licesnses#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/drivers_licesnses").to route_to("drivers_licesnses#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/drivers_licesnses/1").to route_to("drivers_licesnses#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/drivers_licesnses/1").to route_to("drivers_licesnses#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/drivers_licesnses/1").to route_to("drivers_licesnses#destroy", :id => "1")
    end

  end
end
