require 'fizzbuzz'

describe Fizzbuzz do 
  context "given number of factor of 3" do
    it "returns fizz" do
      expect(Fizzbuzz.run(9)).to eql("fizz")
      expect(Fizzbuzz.run(3)).to eql("fizz") 
    end
  end 

  context "given number factor of 5" do
    it "returns buzz" do
      expect(Fizzbuzz.run(5)).to eql("buzz")
      expect(Fizzbuzz.run(65)).to eql("buzz")
    end
  end

  context "given number with both factor 3 and 5" do
    it "returns fizzbuzz" do
      expect(Fizzbuzz.run(15)).to eql("fizzbuzz")
      expect(Fizzbuzz.run(60)).to eql("fizzbuzz")
    end
  end 

  context "given number of neither factor 3 or 5" do
    it "returns the input number" do
      expect(Fizzbuzz.run(4)).to eql(4)
      expect(Fizzbuzz.run(64)).to eql(64)
    end
  end

  context "given number 1 or below" do
    it "raises an error" do
      expect {Fizzbuzz.run(0)}.to raise_error ArgumentError
      expect {Fizzbuzz.run(-1)}.to raise_error ArgumentError
      expect {Fizzbuzz.run(-3)}.to raise_error ArgumentError
    end
    it "returns 1" do
      expect(Fizzbuzz.run(1)).to eql(1)
    end
  end

  context "given number 100 or above" do
    it "raises an error" do
      expect {Fizzbuzz.run(101)}.to raise_error ArgumentError
    end
    it "returns 100" do
      expect(Fizzbuzz.run(100)).to eql("buzz")
    end
  end

  context "given a string" do
    it "raises an error" do
      expect {Fizzbuzz.run("by all laws of aviation bees shouldn't fly")}.to raise_error ArgumentError
      expect {Fizzbuzz.run("")}.to raise_error ArgumentError
    end
  end

  context "given an array" do
    it "raises an error" do
      expect {Fizzbuzz.run([1,4,6,"elephant",10])}.to raise_error ArgumentError
      expect {Fizzbuzz.run([3,6,9,10,15,30])}.to raise_error ArgumentError
    end
  end

  context "given a hash" do
    it "raises an error" do
      expect {Fizzbuzz.run({font_size: 10, font_family: "Arial" })}.to raise_error ArgumentError
    end
  end

  context "given a float" do
    it "raises an error" do
      expect {Fizzbuzz.run(3.0)}.to raise_error ArgumentError
      expect {Fizzbuzz.run(4.6)}.to raise_error ArgumentError
    end
  end
end

