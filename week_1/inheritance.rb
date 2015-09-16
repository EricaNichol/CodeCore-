class Animal
def eat
  print "I'm eating"
end

def walk
  print "I'm walking!!"
end
end

class Dog < Animal

def bark
  print "Woof"
end

def eat
  super
  print "bones are yummy"
end
end

class Cat < Animal
  def eat
    print "I love firsh"
    super
  end
end
