array = []

for x in 1..100
  if x % 3 == 0 && x % 5 ==0
    array << "Fizzbuzz"
  elsif x % 5 == 0
    array << "Buzz"
  elsif x % 3 == 0
    array << "Fizz"
  else
    array << x
  end
end

print array
