require 'spec_helper'

describe PagesController do

  describe "GET 'home'" do

    context "common" do

      before do
        get :home
      end

      it { should respond_with(:success) }
      it { should render_template(:home) }
      it { should assign_to(:posts).with_kind_of(Array) }

      describe "@posts" do

        let!(:last_post) do
          create(:post, created_at: 2.days.ago)
        end

        let!(:first_post) do
          create(:post, created_at: Time.now)
        end

        before do
          get :home
        end

        it "should have correct first post" do
          expect(assigns(:posts).first).to eq(first_post)
        end

        it "should have correct last post" do
          expect(assigns(:posts).last).to eq(last_post)
        end
      end
    end
  end
end
