my_array = [1,4,5,23,14,"Hello there", false, nil]

array = []

b = my_array.select do |x|
  x.is_a? Numeric
end

b.each do |x|
  if x > 10
    array << x
  end
end

print array
