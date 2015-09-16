class TV
MAX_VOLTS = 120
attr_accessor :color
attr_accessor :type
attr_accessor :volts

  def initialize(color, type, volts)
    @color = color
    @type = type
    @volts = volts
  end

  def sport_channel
    "Knicks win!"
  end
  def surf
    change
  end

  private
  def change
    "What Channel would you like to watch?"
  end
end

class Chair
attr_accessor :color
attr_accessor :comfort

  def initialize(color, comfort)
    @color = color
    @comfort = comfort
  end

  def throw
    puts "You broke your chair"
    fix
  end

  private
  def fix
    "Lets fix your chair"
  end
end

class Glass
  def initialize(shape, size)
    @shape = shape
    @size = size
  end

  def break
    "Glass Everywhere"
  end

  def fill
    fill_water
  end

  private
  def fill_water
    "Filling Water"
  end 
end
