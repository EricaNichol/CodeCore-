begin
  10 / 0
  #This will catch any exception of any kind
rescue
  puts "Can't divide by Zero"
end

begin
  10 / 0
  #This will catch any exception of any kind
  #it will also give you an object e that
  #contains the error message
  #and backtrace

rescue => e #variable that gets message
  puts "Can't divide by Zero - orginal message #{e.class}"
end

begin
  10 / 0
  #this will only catch an exception of type ZeroDivisionError
  #it will also give you an object e that contains the message
  #and backtrace
rescue ZeroDivisionError => e
  puts "Can't divide by Zero - orginal message #{e.message}"
  # this will catch exceptions not caught by previous rescue statement
rescue => e
  puts "Unknown error happened: #{e.trace}"
end
