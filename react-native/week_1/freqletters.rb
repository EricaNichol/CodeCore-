puts "Enter Phrase"
phrase = gets.chomp.downcase

freq = Hash.new(0)

phrase.each_char do |x|
  freq[x] += 1
end

print freq
