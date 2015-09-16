def sum(*numbers)
  print numbers
end

sum
sum 1,2,3
sum 4,5,6

def multiply(a, *b)
  result = a
  b.each { |x| result *= x }
  result
end

puts multiply 2,3,4,2 # argument (3 , 4, 2 )
puts multiply 2
puts multiply 5
