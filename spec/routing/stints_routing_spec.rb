require "spec_helper"

describe StintsController do
  describe "routing" do

    it "routes to #index" do
      get("/stints").should route_to("stints#index")
    end

    it "routes to #new" do
      get("/stints/new").should route_to("stints#new")
    end

    it "routes to #show" do
      get("/stints/1").should route_to("stints#show", :id => "1")
    end

    it "routes to #edit" do
      get("/stints/1/edit").should route_to("stints#edit", :id => "1")
    end

    it "routes to #create" do
      post("/stints").should route_to("stints#create")
    end

    it "routes to #update" do
      put("/stints/1").should route_to("stints#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/stints/1").should route_to("stints#destroy", :id => "1")
    end

  end
end
