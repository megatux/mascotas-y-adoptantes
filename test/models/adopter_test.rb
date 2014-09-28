require 'test_helper'

class AdopterTest < ActiveSupport::TestCase
  context "an adopter" do
    [:name, :description, :score].each do |attr|
      should "be invalid without attribute #{attr}" do
        adopter = Adopter.new(attr.to_sym => nil)
        assert_not adopter.save
        assert adopter.errors[attr.to_sym].include?("can't be blank")
      end
    end
  end
end
