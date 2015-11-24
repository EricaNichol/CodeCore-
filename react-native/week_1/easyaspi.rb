#Find out how to get the PI in Ruby and then
#write a formula using
#that to convert degrees to radians
#radians= (pi/180) * degrees

x = Math::PI
puts x

puts "Enter Degrees"
degrees = gets.chomp.to_i
x = degrees * (Math::PI/180)

puts x
