
class Fizzbuzz
  attr_accessor :number
  attr_accessor :number2

  def initialize (number,number2)
    @number = number
    @number2 = number2
  end

def run
 array = []
 array << new_value
 array
 print array  
end

def new_value
array = (1..100).to_a
array.each do | x |
  if x % @number == 0 && x % @number2 == 0
    puts "fizzbuzz "
  elsif
    x % @number == 0
    puts "fizz "
  elsif
    x % @number2 == 0
    puts "buzz "
  else
    puts x
  end
end
end
end
