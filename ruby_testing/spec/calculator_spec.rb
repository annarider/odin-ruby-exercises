require './lib/calculator'

describe Calculator do
  describe "#add" do
    it "returns the sum of two numbers" do
      calculator = Calculator.new
      expect(calculator.add(5, 2)).to eql(7)
    end

    it "returns the sum of more than two numbers" do
      calculator = Calculator.new
      expect(calculator.add(2, 5, 7)).to eql(14)
    end  
  end

  describe "#multiply" do
    calculator = Calculator.new
    it "returns the product of two numbers" do
      expect(calculator.multiply(3, 8)).to equal(24)
    end
    it "returns the product of two different numbers" do
      expect(calculator.multiply(9, 0)).to equal(0)
    end
    it "returns the product of three numbers" do
      expect(calculator.multiply(3, 8, 5)).to equal(120)
    end
  end
end
