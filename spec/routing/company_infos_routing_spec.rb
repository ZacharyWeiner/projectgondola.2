require "rails_helper"

RSpec.describe CompanyInfosController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/company_infos").to route_to("company_infos#index")
    end

    it "routes to #new" do
      expect(:get => "/company_infos/new").to route_to("company_infos#new")
    end

    it "routes to #show" do
      expect(:get => "/company_infos/1").to route_to("company_infos#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/company_infos/1/edit").to route_to("company_infos#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/company_infos").to route_to("company_infos#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/company_infos/1").to route_to("company_infos#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/company_infos/1").to route_to("company_infos#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/company_infos/1").to route_to("company_infos#destroy", :id => "1")
    end

  end
end
