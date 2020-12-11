require_relative "award"

class BlueFirst < Award
  attr_reader :name, :expires_in, :quality

  def initialize(name, expires_in, quality)
    super(name, expires_in, quality)
  end

  def quack()
    puts 'bluefirst quack'
  end
  
end

b = Award.new("Normal Award", 100, 30)
puts(b)

c = BlueFirst.new("Blue First", 90, 40)
puts(c.name)
puts(c.quality)
c.quack