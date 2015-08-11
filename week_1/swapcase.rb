puts "Type in Phrase"

words = gets.chomp.swapcase


words.each_char do |x|
  puts x
end
