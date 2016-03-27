require_relative 'array_list'

describe ArrayList do

  describe "#new" do
    it "generates an array of the given size" do
      array1 = ArrayList.new(4)
      expect(array1.length).to eq 4
    end

    it "generates an array of size 8 if no other size is specified" do
      array1 = ArrayList.new
      expect(array1.length).to eq 8
    end
  end

  describe "#add" do
    it "adds the given value to the end of the array" do
      array1 = ArrayList.new
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

  describe "#insert" do
    it "inserts the specified value at the given index" do
      array1 = ArrayList.new(['A', 'B', 'D', 'E', 'F', 'G'])
      expect(array1.insert(2, 'C')).to eq 'C'
      expect(array1.length).to eq 7
      expect(array1.get(6)).to eq 'G'
      expect(array1.get(5)).to eq 'F'
      expect(array1.get(4)).to eq 'E'
      expect(array1.get(3)).to eq 'D'
      expect(array1.get(2)).to eq 'C'
      expect(array1.get(1)).to eq 'B'
      expect(array1.get(0)).to eq 'A'
    end

    it "inserts the specified value at the given index" do
      array1 = ArrayList.new(['B', 'C', 'D', 'E', 'F', 'G'])
      expect(array1.insert(0, 'A')).to eq 'A'
      expect(array1.length).to eq 7
      expect(array1.get(6)).to eq 'G'
      expect(array1.get(5)).to eq 'F'
      expect(array1.get(4)).to eq 'E'
      expect(array1.get(3)).to eq 'D'
      expect(array1.get(2)).to eq 'C'
      expect(array1.get(1)).to eq 'B'
      expect(array1.get(0)).to eq 'A'
    end

    it "inserts the specified value at the given index" do
      array1 = ArrayList.new(['A', 'B', 'C', 'D', 'E', 'F'])
      expect(array1.insert(6, 'G')).to eq 'G'
      expect(array1.length).to eq 7
      expect(array1.get(6)).to eq 'G'
      expect(array1.get(5)).to eq 'F'
      expect(array1.get(4)).to eq 'E'
      expect(array1.get(3)).to eq 'D'
      expect(array1.get(2)).to eq 'C'
      expect(array1.get(1)).to eq 'B'
      expect(array1.get(0)).to eq 'A'
    end

    it "raises an OutOfBoundsException if the index number is too large" do
      array1 = ArrayList.new(['A', 'B', 'C', 'D'])
      expect{array1.insert(7, 'X')}.to raise_error(OutOfBoundsException)
    end

    it "raises an OutOfBoundsException if the index number is too small" do
      array1 = ArrayList.new(['A', 'B', 'C', 'D'])
      expect{array1.insert(-1, 'X')}.to raise_error(OutOfBoundsException)
    end

  end

end
