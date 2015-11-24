#write a code that prints 1..100. if no. is / 3 then Fizz
#if /5 then buzz, else Fizzbuzz
for x in 1..100
  if x % 3 == 0 && x % 5 ==0
    puts "Fizzbuzz"
  elsif x % 5 == 0
    puts "Buzz"
  elsif x % 3 == 0
    puts "Fizz"
  else
    puts x
  end
end
