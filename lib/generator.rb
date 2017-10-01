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

  def add_to_options
    options.push(("A".."Z").to_a) if uppercase
    options.push(("a".."z").to_a) if lowercase
    options.push((1..9).to_a) if number
    options.push("!","$","%","&","*","@","^") if special
    options
  end

end
