print "Type in a number"
number = gets.chomp.to_i
#This will keep promptin the user to enter a number that is less than 100
#main part

while number >= 100
  puts "try again"
  number = gets.chomp
end
  
for x in number..100
  puts x
end
