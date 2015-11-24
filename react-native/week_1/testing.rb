number1 =  4
number2 =  5
@fizzbuzz = []

array = (1..100).to_a
array.map do |x|
  if number1.to_i % x == 0
  @fizzbuzz << "fizz"
  elsif number2.to_i % x == 0
  @fizzbuzz << "buzz"
  elsif x % number1.to_i == 0 && number2.to_i % x == 0
  @fizzbuzz << "fizzbuzz"
else
  @fizzbuzz << x
end
end

@fizzbuzz
