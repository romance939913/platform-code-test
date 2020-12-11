require_relative "award_class"

class BlueFirst < AwardClass
  attr_accessor :name, :expires_in, :quality

  def initialize(name, expires_in, quality)
    super(name, expires_in, quality)
  end

  def update
    self.quality += 1 if self.quality < 50
    self.expires_in -= 1
    self.quality += 1 if self.expires_in < 0 && self.quality < 50
  end
end
