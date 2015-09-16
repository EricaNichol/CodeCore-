puts "Enter Number"
x = gets.chomp.to_i

fibonacci = []

#amount(x) * bloc, method is if array is 0 or 1 , push 1 in to array.
# if not push each time
x.times do
  if fibonacci.size == 0 || fibonacci.size == 1
    fibonacci << 1
  else
    fibonacci << fibonacci[-2] + fibonacci[-1]
end
puts fibonacci.inspect
end

print fibonacci
