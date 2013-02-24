require 'spec_helper'

describe User do

  describe "mass assignment" do

    context "allowed values" do
      [:name, :email].each do |attr|
        it { should allow_mass_assignment_of(attr) }
      end
    end
  end
end
