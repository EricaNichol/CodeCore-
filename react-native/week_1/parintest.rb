

puts "enter Names with commas"
@names = gets.chomp.split(", ").to_a.shuffle


puts "Enter number of teams"
@number_of_teams = gets.chomp.to_i


array = []
(0...@number_of_teams).each do | x |
 array << [] * x
 end

 x = 0
 until x >= @names.count
   puts "x = #{x}"
   for y in (0...@number_of_teams)
    array[y] << @names[x]
    x += 1
    break if x >= @names.count
 end
 end

print array
