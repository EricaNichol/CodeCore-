average_temperature_in_c = {vancouver: 13.7, edmonton: 8.5, Calgary: 10.5}

new_array = {}

average_temperature_in_c.each do | x, y |
  new_array[x] = y * 9/5 + 32
end

print new_array
