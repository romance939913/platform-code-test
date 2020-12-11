require_relative "award"

class BlueFirst < Award
  attr_reader :name, :expires_in, :quality

  def initialize(name, expires_in, quality)
    super(name, expires_in, quality)
  end

  def update
    award.quality += 1 if award.quality < 50
    award.quality += 1 if award.quality < 50 && award.expires_in < 11
    award.quality += 1 if award.quality < 50 && award.expires_in < 6
    award.expires_in -= 1
    award.quality = 0 if award.expires_in < 0
    puts self
  end
  
end
