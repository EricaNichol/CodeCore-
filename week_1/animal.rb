class Animal

  def initialize (size, speed)
    @size = size
    @speed = speed
  end

attr_accessor :size
attr_accessor :speed

  def breath
    "Inhale and Exhale"
  end

  def eat
    "Eat"
end

class Cat < Animal

end

class Bird < Animal

end
end
