puts "Enter a Phrase"
phrase = gets.chomp.downcase

if phrase == phrase.reverse
 puts "This is a palindrome"
else
  puts "Cool Story Bro"
end
