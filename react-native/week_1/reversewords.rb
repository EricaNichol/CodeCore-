puts "Enter your Sentence"
words = gets.chomp.downcase.split(" ")

array = []

words.each do |x|
  array << x.reverse
end

print array

print array.reverse 
