require "./cookie.rb"
# Cookie is super class or parent class
# Oreo the sub class or the child class

class Orea < Cookie
  attr_accessor :filling_type

  #this re-defines (or overrides) the method that came with
  #the Cookie class
  def bake
    "Baking the Oreo Cookie"
    #super calls a method with the same name in the parent class
  end
end
