puts "Enter Number"

number = gets.to_i

counter = 1

until counter > number
print " " * (number - counter), " 0 " * counter, "/n"

#print "#{" " * (number - counter)}#{'0' * counter}"
counter += 1
end
