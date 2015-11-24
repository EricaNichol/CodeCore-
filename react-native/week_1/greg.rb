puts "how many lines should triangle have?"
size = gets.chomp.to_i

space = ""
(size - 1).times { space += " " }
zeros = "0"
#2 times string = 2 string

size.times do
  puts "#{space}#{zeros}"
  space = space.chomp(" ")
  zeros += " 0"
end
