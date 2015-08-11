puts "Enter Sentence"

#prints array - print - code
x = print gets.chomp.split.map! { |x| x.capitalize }.join(" ")
#prints items inside the array
x = gets.chomp.split.map! { |x| print x.capitalize," " }
