hash = {:a => "123", :b => "345", :c => "678", :d => "910"}.to_a

array = []
hash.each do |k , v|
    array << "#{k}#{v}"
end

puts array.inspect
