
=begin
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
=end

=begin
def greeting
  puts ">>>Start"
  name = "Tam"
  yield(name)
  puts ">>>>END"
end

greeting do |name|
  puts "Hello #{name}"
end

greeting do |name| puts "Bye #{name}"
end

=end

my_lambda = lambda { puts "I'm a lambda"}
my_lambda_1 = lambda { puts "I'm a lambda 1"}
puts my_lambda.call

=begin
def my_method(x,y)
  puts ">>>START"
  x.call
  y.call
  puts ">>>> END"
end

my_method(my_lambda, my_lambda_1)
=end

# or
def my_method(*x)
  puts ">>>START"
  x.each { |x| x.call }
  puts ">>>> END"
end

my_method(my_lambda, my_lambda_1)
