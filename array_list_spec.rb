require_relative 'array_list'

describe ArrayList do

  describe "#new" do
    it "generates an array of the given size" do
      array1 = ArrayList.new(5)
      expect(array1.size).to eq 5
    end

    it "generates an array of length 8 if no size is given" do
      array1 = ArrayList.new
      expect(array1.size).to eq 8
    end
  end

  describe "#add" do
    it "adds the given value to the end of the array" do
      array1 = ArrayList.new(5)
      expect(array1.add("thing")).to eq "thing"
    end
  end

  describe "#get" do
    it "returns the value at the given index" do
      array1 = ArrayList.new(['A', 'B', 'C', 'D'])
      expect(array1.get(1)).to eq 'B'
    end

    it "raises an OutOfBoundsException if the index number is too large" do
      array1 = ArrayList.new(['A', 'B', 'C', 'D'])
      expect{array1.get(7)}.to raise_error(OutOfBoundsException)
    end

    it "raises an OutOfBoundsException if the index number is too small" do
      array1 = ArrayList.new(['A', 'B', 'C', 'D'])
      expect{array1.get(-1)}.to raise_error(OutOfBoundsException)
    end
  end

  describe "#set" do
    it "sets the value of an array at given index to the given value" do
      array1 = ArrayList.new(['A', 'B', 'C', 'D'])
      expect(array1.set(1, 'X')).to eq 'X'
    end

    it "raises an OutOfBoundsException if the index number is too large" do
      array1 = ArrayList.new(['A', 'B', 'C', 'D'])
      expect{array1.set(7, 'X')}.to raise_error(OutOfBoundsException)
    end

    it "raises an OutOfBoundsException if the index number is too small" do
      array1 = ArrayList.new(['A', 'B', 'C', 'D'])
      expect{array1.set(-1, 'X')}.to raise_error(OutOfBoundsException)
    end
  end

  describe "#length" do
    it "returns the length of the array" do
      array1 = ArrayList.new(5)
      expect(array1.length).to eq 5
    end
  end

end
