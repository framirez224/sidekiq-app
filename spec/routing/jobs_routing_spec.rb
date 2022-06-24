require "rails_helper"

RSpec.describe JobsController, type: :routing do
  describe "routing" do
    it "routes to #new" do
      expect(get: "/jobs/new").to route_to("jobs#new")
    end

    it "routes to #create" do
      expect(post: "/jobs").to route_to("jobs#create")
    end

    it "routes to #oh_boy" do
      expect(post: "/jobs/oh_boy").to route_to("jobs#oh_boy")
    end

    it "routes to #index" do
      expect(get: "/jobs").to route_to("jobs#index")
    end
  end
end
