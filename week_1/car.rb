class Car
  def initialize(model, type, capacity)
    @model = model
    @type = type
    @capacity = capacity
    #@model, @capacity, @type = model, type, capacity
  end

  def self.max_speed
    "200"
  end

  def drive
    i_engine
    @speed = 150
    "Keep Driving"
  end

  def stop
    pump_gas
    "Stop! Top speed is #{@speed}"
  end

  def park
    "Park right now"
  end
end

private
def self.info
  "Clean Wheels"
end

def pump_gas
  "Pumping Gas"
end

def i_engine
  puts "Ignite Engine"
end
