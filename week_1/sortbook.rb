puts "Enter Book Names"
names = gets.chomp.downcase
array =[]
until names == "exit"
  puts "Enter Book Names"
  array << names
  names = gets.chomp.downcase
end
puts "The following are in your books library"
puts array.sort







=begin
books = Hash.new(0)

names.each do |k , v|
  books[k]
end

print names
=end
