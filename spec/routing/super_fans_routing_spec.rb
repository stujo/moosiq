require "spec_helper"

describe SuperFansController do
  describe "routing" do

    it "routes to #index" do
      get("/super_fans").should route_to("super_fans#index")
    end

    it "routes to #new" do
      get("/super_fans/new").should route_to("super_fans#new")
    end

    it "routes to #show" do
      get("/super_fans/1").should route_to("super_fans#show", :id => "1")
    end

    it "routes to #edit" do
      get("/super_fans/1/edit").should route_to("super_fans#edit", :id => "1")
    end

    it "routes to #create" do
      post("/super_fans").should route_to("super_fans#create")
    end

    it "routes to #update" do
      put("/super_fans/1").should route_to("super_fans#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/super_fans/1").should route_to("super_fans#destroy", :id => "1")
    end

  end
end
