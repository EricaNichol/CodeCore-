#loop + array
array = []
puts "Enter phrase, type Exit to stop"
input = gets.chomp.downcase
#while is true until "false" or nil, until is false until true
while input != "exit"
  array.push(input)
  puts "Enter phrase, type Exit to stop"
  input = gets.chomp.downcase
end
  puts "You've entered #{array.count} items"
