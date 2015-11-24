bc_cities_population = {vancouver: 2135201, victoria:
  316327, abbotsford: 149855, kelowna: 141767, nanaimo:
   88799, white_rock: 82368, kamloops: 73472, chilliwack: 66382 }

bc_cities_population.each do |key, value|
  if value > 100000
    puts "#{key.capitalize} is a large city with population of #{value}"
  else
    puts"#{key.capitalize} is a small city with a population of #{value}"
  end
end
