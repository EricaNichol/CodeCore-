print "Enter Number"
number = gets.to_i
counter = 1

until counter > number
  puts "#{" " * (number - counter)}#{'O ' * counter}"
  counter += 1
end
