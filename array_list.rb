class ArrayList

  def initialize(size = 8)
    @array = Array.new(size)
  end

  def add(element)
    @array.push(element)
    @array.last
  end

  def get(index)
    raise OutOfBoundsException if index >= self.length || index < 0
    @array[index]
  end

  def set(index, value)
    raise OutOfBoundsException if index >= self.length || index < 0
    @array[index] = value
    @array[index]
  end

  def length
    @array.length
  end

  def insert(index, value)
    raise OutOfBoundsException if index > self.length || index < 0
    shift_right(index)
    @array[index] = value
    @array[index]
  end

  def shift_right(index)
    position = @array.length
    while position > index
      @array[position] = @array[position-1]
      position -= 1
    end
  end

end


class OutOfBoundsException < StandardError; end
