puts "How many lines should the triangle be?"
size = gets.chomp.to_i

space = ""
(size - 1).times { space += " "}
zeros = "0"

size.times do
  puts "#{space}#{zeros}"
  space = space.chomp(" ")
  zeros += " 0"
end
