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

    it "supports custom delimiters like //;\n4;2;6/n" do
      expect(StringCalculator.add("//;\n4;2;6/n")).to eq(12)
    end

    it "raises an error with negative numbers of string value" do
      expect { StringCalculator.add("1,-7,-3") }.to raise_error("negative numbers not allowed: -7,-3")
    end

    it "returns number for an passing mutiple no delimiters string value" do
      expect(StringCalculator.add("456")).to eq(15)
    end
       
  end
end

