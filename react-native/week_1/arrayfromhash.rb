hash = {vancouver: 2135201, victoria:  316327, abbotsford: 149855, kelowna: 141767, nanaimo:  88799, white_rock: 82368, kamloops: 73472, chilliwack: 66382 }


=begin
hash.each do |k , v|
  puts "#{v/1000}"
end
=end

def divide(x,y=1000)
 array = []
 x.each_value { |x| array <<  x/ y }
 print array
end

divide(hash)
