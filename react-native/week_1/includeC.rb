print "Please enter a sentence: "
x = gets.chomp.downcase

if x.slice("c") == nil
  puts "There is no C"
else
  puts "Yes there's a C"
end
