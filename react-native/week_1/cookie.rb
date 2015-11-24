#to define a class you use the "class" keyword
#class names must start with a capital letter - classes are treated
#as constants in Ruby
class Cookie
  #mthod is called when you create a new object
  #c = Cookie(10,20)
  def initialize(sugar_amount, flour_amount)
    @sugar_amount = sugar_amount
    @flour_amount = flour_amount
  end

  def sugar_amount
    @sugar_amount
  end
  

  def set_color(color)
    @@color = color
  end

  def show_color
    @@color
  end


  #this defines an instance (or object) method called "bake"
  #this is a public method
def bake
    "Baking the Cookie"
end

def eat
    dip_in_milk
    "Eating the cookie"
end

# this defines a public class method.
# this can be called by : Cookie.info
def self.info
  puts extra_info
  #instance vs method
  "I am a Cookie class"
end
end

private
def self.extra_info
  puts "I am a super cookie class"
end

def dip_in_milk
    "Dipping the ookie in milk"
end
