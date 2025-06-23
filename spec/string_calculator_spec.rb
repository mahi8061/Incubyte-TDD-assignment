require "string_calculator"
describe StringCalculator do
  subject(:string_calculator) {described_class.new}

  describe "#add" do
    it "takes an empty string and returns 0" do
      expect(string_calculator.add("")).to eq(0)
    end
    it "takes 1 number" do
      expect(string_calculator.add("1")).to eq(1)
    end

    it "takes 2 numbers" do
      expect(string_calculator.add("1,2")).to eq(3)
    end

    it "handles an unknown amount of numbers" do
      expect(string_calculator.add("1,2,3,4,5")).to eq(15)
    end

    it "handles new lines e.g 1\n2,3" do
      expect(string_calculator.add("1\n2,3")).to eq(6)
    end

    it "throws an exception \"negatives not allowed\" when a negative number is passed" do
      expect{string_calculator.add("-1")}.to raise_error(RuntimeError, "negatives not allowed")
      expect{string_calculator.add("-1,2")}.to raise_error(RuntimeError, "negatives not allowed")
      expect{string_calculator.add("-1,-2")}.to raise_error(RuntimeError, "negatives not allowed")
    end

    it "ignores numbers bigger than 1000 e.g. 2 + 1000 = "
  end

end