puts "What year is your car?"
year = gets.chomp.to_i

if year > 2015
  puts "Future"

elsif year == 2015
  puts "New"

elsif year < 2010
  puts "Very Old"

else
  puts "Old"

end
