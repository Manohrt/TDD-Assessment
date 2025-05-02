require_relative '../lib/string_calculator'


RSpec.describe StringCalculator do
  describe ".add" do
    it "returns 0 for an empty string" do
      expect(StringCalculator.add("")).to eq(0)
    end

    it "returns number for an passing single string value" do
    	expect(StringCalculator.add("1")).to eq(1)
    end

     it "returns number for an passing mutiple string value" do
    	expect(StringCalculator.add("1,5,5")).to eq(11)
    end

    it "returns sum of numbers separated by commas and newlines string value" do
      expect(StringCalculator.add("1\n2,3")).to eq(6)
    end
       
  end
end

