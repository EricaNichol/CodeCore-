puts "Starbucks, Tim Hortons or Blenz?"
drink = gets.chomp.downcase

case drink

when "starbucks" then print "Grande Latte"
when "tim hortons" then print "Double Double"
when  "blenz" then print "Medium Coffee"
else puts "I dont know this shop"
end
