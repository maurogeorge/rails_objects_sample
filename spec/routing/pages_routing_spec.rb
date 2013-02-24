require 'spec_helper'

describe PagesController, "routing" do

    it "root_path" do
      expect(get("/")).to route_to(controller: "pages", action: "home")
      expect(root_path).to eq("/")
    end
end
