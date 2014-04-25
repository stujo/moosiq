require "spec_helper"

describe SuperFansController do
  describe "routing" do

    it "routes to #index" do
      get("/artists/123/super_fans").should route_to("super_fans#index", {:artist_id => "123"})
    end

    it "routes to #new" do
      get("/artists/123/super_fans/new").should route_to("super_fans#new", {:artist_id => "123"})
    end

    it "routes to #show" do
      get("/artists/123/super_fans/1").should route_to("super_fans#show", {:artist_id => "123", :id => "1"})
    end

    it "routes to #edit" do
      get("/artists/123/super_fans/1/edit").should route_to("super_fans#edit", {:artist_id => "123", :id => "1"})
    end

    it "routes to #create" do
      post("/artists/123/super_fans").should route_to("super_fans#create", {:artist_id => "123"})
    end

    it "routes to #update" do
      put("/artists/123/super_fans/1").should route_to("super_fans#update", {:artist_id => "123", :id => "1"})
    end

    it "routes to #destroy" do
      delete("/artists/123/super_fans/1").should route_to("super_fans#destroy", {:artist_id => "123", :id => "1"})
    end

  end
end
