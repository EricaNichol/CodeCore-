class Phone
  attr_reader :brand
  attr_accessor :type

  def initialize(brand,type)
    @brand = brand
    @type = type
  end

  def call
    connect_internet
  end

private
  def connect_internet
    puts "Loading: #{@brand}#{@type} is connecting to the internet"
  end

end
