require 'spec_helper'

describe Post do

  describe "mass assignment" do

    context "allowed values" do
      [:content, :title].each do |attr|
        it { should allow_mass_assignment_of(attr) }
      end
    end

    context "not allowed values" do
      [:id, :user_id, :created_at, :updated_at].each do |attr|
        it { should_not allow_mass_assignment_of(attr) }
      end
    end
  end

  describe "validations" do

    context "presence" do

      [:content, :title].each do |attr|
        it { should validate_presence_of(attr) }
      end
    end
  end
end
