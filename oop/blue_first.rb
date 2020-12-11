require_relative "award"

class BlueFirst < Award
  attr_reader :name, :expires_in, :quality

  def initialize(name, expires_in, quality)
    super(name, expires_in, quality)
  end

  def update
    self.quality += 1 if self.quality < 50
    self.expires_in -= 1
    self.quality += 1 if self.expires_in < 0 && self.quality < 50
    puts self
  end
  
end
