#Ask user for a number then print out the number multiplied by 5
#and then the same number added to itself

puts "Enter a number"
number = gets.chomp.to_i

print number * 5 + number
