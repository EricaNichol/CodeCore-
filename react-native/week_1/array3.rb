#solutin 1
puts "Phrase here"
sentence = gets.chomp

words = sentence.split

words.each { |x| print x.capitalize, " " }

#solution 2

puts "Phrase here"
sentence = gets.chomp

words = sentence.split
new_sent = []

words.each do |x|
  new_sent << x.capitalize
end

puts new_sent.join(" ")
