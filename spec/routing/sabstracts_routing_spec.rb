require "spec_helper"

describe SabstractsController do
  describe "routing" do

    it "routes to #index" do
      get("/sabstracts").should route_to("sabstracts#index")
    end

    it "routes to #new" do
      get("/sabstracts/new").should route_to("sabstracts#new")
    end

    it "routes to #show" do
      get("/sabstracts/1").should route_to("sabstracts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/sabstracts/1/edit").should route_to("sabstracts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/sabstracts").should route_to("sabstracts#create")
    end

    it "routes to #update" do
      put("/sabstracts/1").should route_to("sabstracts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/sabstracts/1").should route_to("sabstracts#destroy", :id => "1")
    end

  end
end
