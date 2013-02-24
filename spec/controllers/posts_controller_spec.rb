require 'spec_helper'

describe PostsController do

  describe "GET 'show'" do

    context "when success" do

      let!(:post) do
        create(:post)
      end

      context "common" do

        before do
          get :show, id: post
        end

        it { should respond_with(:success) }
        it { should render_template(:show) }
        it { should assign_to(:post).with(post) }
      end
    end

    context "when failure" do

      it "should raise error with a invalid id" do
        expect do
          get :show, id: 'invalid'
        end.to raise_error(ActiveRecord::RecordNotFound)
      end
    end
  end
end
