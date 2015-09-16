=begin
def sum(x,y)
  x + y
end
puts sum 4, 6
puts sum(4,6)

def multiply (a, b = 1)
  a * b
end

puts multiply (a)
=end

=begin
def greeting(name)
 "Hello #{name.capitalize}!"
end
# Method, variable, value, string,**
puts greeting("David")
=end

=begin
def by_five?(number)
  number % 5 == 0
end

puts by_five?(5)
=end

=begin
def large(*numbers)
    numbers.max
end

puts large(1, 2, 5,6,7,8)
=end

def my_method
  puts "hello"
  yield if block_given? #this will excute the block given to the my_method
  puts "Bye"
end

my_method do
  puts ">>>>"
  puts "Calling block 2"
  puts ">>>"
end

my_method { puts ">>>>> calling with {} 3"}

my_method
