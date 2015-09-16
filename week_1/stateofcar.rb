puts "What year was your car made in?"
year = gets.chomp.to_i

if year > 2015
  puts "Future Car"
elsif year > 2010
  puts "New Car"
elsif year > 2005
puts "Old Car"
elsif year > 2000
puts "Very Old Car"
else
puts "Ancient Car"
end
