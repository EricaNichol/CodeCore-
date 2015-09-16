score = 0
puts "Are they Knicks players? (Answer Y or N)
1) Carmelo Anthony"
score += 1 if gets.chomp.downcase == "y"
puts "2) Patrick Ewing"
score += 1 if gets.chomp.downcase == "y"
puts "3) Charles Barkley"
score += 1 if gets.chomp.downcase == "n"

puts "You got #{score} out of 3."
