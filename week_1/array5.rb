array = %w(david john pam kelly brett dan)

array.map do |x|
  print x.capitalize.reverse, " "
end
