puts "Enter first name"
first_name = gets.chomp.capitalize
puts "Enter last name"
last_name = gets.chomp.capitalize
puts "Enter City"
city = gets.chomp.capitalize
puts "Enter Birth"
birth = gets.chomp.capitalize
puts "Enter Age"
age = gets.chomp.capitalize

hash = {"first name" => first_name,
"last name" => last_name,
"city" => city,
"birth" => birth,
"age" => age }

hash.each do |x, y|
  puts "Your #{x} is #{y}"
end
