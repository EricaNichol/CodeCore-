numbers = (1..100).to_a

numbers << numbers.sample

hash = Hash.new(0)

numbers.each do | x |
  if hash[x] == 0
    hash[x] = 1
  else
    puts "#{x} is repeated"
    break
  end
end
