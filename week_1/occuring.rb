puts "Enter Phrase"
text = gets.chomp.downcase

letters = text.split(//)

occurances = Hash.new(0)

letters.each do |x|
    occurances[x] += 1
end

x = occurances.max_by do |k, v|
  v
end

puts x

# puts lol

#max_by arranges key in terms of letter a = 1  z =
