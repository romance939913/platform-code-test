require_relative "../award"

class BlueCompare < Award
  def initialize(name, expires_in, quality)
    super(name, expires_in, quality)
  end

  def update
    self.quality += 1 if self.quality < 50
    self.quality += 1 if self.quality < 50 && self.expires_in < 11
    self.quality += 1 if self.quality < 50 && self.expires_in < 6
    self.expires_in -= 1
    self.quality = 0 if self.expires_in < 0
  end
end
