class Generator
  attr_accessor :length, :uppercase, :lowercase, :number, :special, :options

  def initialize(length, uppercase, lowercase, number, special)
    @length = length
    @uppercase = uppercase
    @lowercase = lowercase
    @number = number
    @special = special
    @options = []
  end
end
