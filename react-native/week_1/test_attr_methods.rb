class TestAttrMethods

  def initialize(a , b="hello", c="Bonjour!")
    @a = a
    @b = b
    @c = c
  end

  attr_reader :a
  attr_accessor :b
  attr_writer :c

  def greetings
    puts "#{a} #{b} #{@c}"
  end
end
