puts "Enter Phrase"
words = gets.chomp.downcase
letters = words.each_char

freq = Hash.new(0)

letters.each do |x|
  freq[x] += 1

end

x = freq.sort_by do
  |k, v| v

  print v

end
