puts "Phrase"

phrase = gets.chomp.downcase

letters = Hash.new(0)

phrase.each_char do |x|
  letters[x] += 1

end

x = letters.max_by { |k, v| v }

puts x.value{0}



#x = letters.each_value { |v| v }
#puts x.max_by { |k, v| v}[0]
