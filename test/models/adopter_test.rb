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

  context "the Adopter.worse method" do
    setup do
      (1..10).each do |score|
        Adopter.create(name: "name#{score}", description: "an adopter with score #{score}", score: score)
      end
      @all_adopters = Adopter.all
      @worse_adopters = Adopter.worse(3)
    end

    should "get the n adopters" do
      assert_equal 3, @worse_adopters.length
    end

    should "get existent adopters" do
      assert_equal (@all_adopters - @worse_adopters).size, @all_adopters.size - 3
    end

    should "get the worse scored adopters" do
      max_score = @worse_adopters.max{|a,b| a.score <=> b.score}.score
      (@all_adopters - @worse_adopters).each do |adopter|
        assert adopter.score >= max_score
      end
    end
  end
end
