#generate numbers from 1 to a million
numbers = (1..1000000).to_a
#adds random element from the array back to itself
#to generate a duplicate number
numbers << numbers.sample
# solution 1
numbers.shuffle

frequencies = Hash.new(0)
#{1 => 1, 2=. 1}
numbers.each do |number|
    if frequencies[number] == 0 #then
      frequencies[number] = 1
    else
      puts "#{number} is repeated"
      #this will stop loop from coninuing once integer is found
      break
    end
  end

  # Solution 2
  numbers.sort!

  numbers.each do |x|
    if x == numbers[x]
      puts "#{x} is repeated"
      break
end
end
