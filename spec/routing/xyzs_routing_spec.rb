require "rails_helper"

RSpec.describe XyzsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/xyzs").to route_to("xyzs#index")
    end


    it "routes to #show" do
      expect(:get => "/xyzs/1").to route_to("xyzs#show", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/xyzs").to route_to("xyzs#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/xyzs/1").to route_to("xyzs#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/xyzs/1").to route_to("xyzs#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/xyzs/1").to route_to("xyzs#destroy", :id => "1")
    end

  end
end
