require 'spec_helper'

describe PostsController, "routing" do

  it "post_path" do
    expect(get("/posts/1")).to route_to(controller: "posts", action: "show", id: "1")
    expect(post_path(1)).to eq("/posts/1")
  end
end
