class Dog
MAX_BONE_CAPACITY = 3
attr_reader :color

  def initialize (color, type)
    @color = color
    @type = type
    @bones_array = []
  end

  def give(x)
    if @bones_array.count >= MAX_BONE_CAPACITY
       "Too many bones"
    else
      @bones_array << x
       "Thanks"
    end
  end

  def eat
    if @bones_array.count == 0
     "I have NO bones"
    elsif @bones_array.pop
     "yummy! I ate a #{@size} bone"
  end
end
end

class Bones

  def initialize(size)
    @size = size
  end

end
