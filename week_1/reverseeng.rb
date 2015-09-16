hash = { "Name" => "David" , "last_name" => "Lin"}

def values(x)
values = []
x.each { |key, value| values << value }
values
end

def keys(x)
keys = []
x.each { |key, value| keys << key }
keys
end

print keys(hash)
print values(hash)
