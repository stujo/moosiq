require "spec_helper"

describe StintsController do
  describe "routing" do
    it "routes to #index" do
      get("/artists/102/stints").should route_to("stints#index", :artist_id => "102")
    end

    it "routes to #new" do
      get("/artists/102/stints/new").should route_to("stints#new", :artist_id => "102")
    end

    it "routes to #show" do
      get("/artists/102/stints/1").should route_to("stints#show", { :artist_id => "102", :id => "1" })
    end

    it "routes to #edit" do
      get("/artists/102/stints/1/edit").should route_to("stints#edit",{ :artist_id => "102", :id => "1" })
    end

    it "routes to #create" do
      post("/artists/102/stints").should route_to("stints#create", { :artist_id => "102" })
    end

    it "routes to #update" do
      put("/artists/102/stints/1").should route_to("stints#update", { :artist_id => "102", :id => "1" })
    end

    it "routes to #destroy" do
      delete("/artists/102/stints/1").should route_to("stints#destroy", { :artist_id => "102", :id => "1" })
    end

  end
end
