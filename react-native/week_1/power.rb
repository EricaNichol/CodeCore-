puts "Enter Number"

number = gets.chomp.to_i

if number % 3 == 0
  print number ** 3
elsif number % 2 == 0
  print number ** 2
else
  number
end
