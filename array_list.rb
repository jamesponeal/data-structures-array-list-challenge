class ArrayList

  def initialize(size = 8)
    @array = Array.new(size)
  end

  def size
    @array.length
  end

  def add(element)
    @array.push(element)
    @array.last
  end

  def get(index)
    raise OutOfBoundsException if index >= self.size || index < 0
    @array[index]
  end

  def set(index, value)
    raise OutOfBoundsException if index >= self.size || index < 0
    @array[index] = value
    @array[index]
  end

  def length
    @array.length
  end

end


class OutOfBoundsException < StandardError; end
