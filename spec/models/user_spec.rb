require 'spec_helper'

describe User do

  describe "mass assignment" do

    context "allowed values" do
      [:name, :email].each do |attr|
        it { should allow_mass_assignment_of(attr) }
      end
    end

    context "not allowed values" do
      [:id, :created_at, :updated_at].each do |attr|
        it { should_not allow_mass_assignment_of(attr) }
      end
    end
  end

  describe "validations" do

    context "presence" do

      [:name, :email].each do |attr|
        it { should validate_presence_of(attr) }
      end
    end

    context "email" do

      describe "format" do

        it { should_not allow_value('bad').for(:email) }
        it { should allow_value("johndoe@example.com").for(:email) }
      end

      describe "uniqueness" do

        before do
          create(:user)
        end

        it { should validate_uniqueness_of(:email) }
      end
    end
  end
end
