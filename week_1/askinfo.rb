hash = Hash.new
array = []


puts "What is your first name?"
hash["first_name"]= gets.chomp.capitalize
puts "What is your last name?"
hash["last_name"]= gets.chomp.capitalize
puts "What is your age?"
hash["age"]= gets.chomp.capitalize

puts "What city have you visited?"
visited = gets.chomp.capitalize
array << visited
hash["cities"] = array

while visited != "done"
  array << visited
  puts "What other cities? Type done to complete"
  visited = gets.chomp
end

puts hash
